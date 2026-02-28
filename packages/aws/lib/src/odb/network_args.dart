// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_timeouts.dart';

/// {@template pulumi_odb_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_odb_network_network_args_doc}
class NetworkArgs {
  /// The name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure availability_zone maps correctly with availability_zone_id.
  final pulumi.Input<String>? availabilityZone;

  /// The AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String> availabilityZoneId;

  /// The CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  final pulumi.Input<String> backupSubnetCidr;

  /// The CIDR notation for the network resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String> clientSubnetCidr;

  /// The name of the custom domain that the network is located. Custom_domain_name and default_dns_prefix both can't be given. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? customDomainName;

  /// The default DNS prefix for the network resource. Changing this will force terraform to create new resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? defaultDnsPrefix;

  /// If set to true deletes associated OCI resources. Default false.
  final pulumi.Input<bool>? deleteAssociatedResources;

  /// The user-friendly name for the odb network. Changing this will force terraform to create a new resource.
  final pulumi.Input<String> displayName;

  /// Specifies the configuration for KMS access from the ODB network.
  final pulumi.Input<String>? kmsAccess;

  /// Specifies the endpoint policy for KMS access from the ODB network.
  final pulumi.Input<String>? kmsPolicyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the configuration for Amazon S3 access from the ODB network.
  final pulumi.Input<String> s3Access;

  /// Specifies the endpoint policy for Amazon S3 access from the ODB network.
  final pulumi.Input<String>? s3PolicyDocument;

  /// Specifies the configuration for STS access from the ODB network.
  final pulumi.Input<String>? stsAccess;

  /// Specifies the endpoint policy for STS access from the ODB network.
  final pulumi.Input<String>? stsPolicyDocument;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<NetworkTimeouts>? timeouts;

  /// Specifies the configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> zeroEtlAccess;

  /// Creates a new [NetworkArgs].
  /// [availabilityZone] The name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure availability_zone maps correctly with availability_zone_id.
  /// [availabilityZoneId] The AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  /// [backupSubnetCidr] The CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  /// [clientSubnetCidr] The CIDR notation for the network resource. Changing this will force terraform to create new resource.
  /// [customDomainName] The name of the custom domain that the network is located. Custom_domain_name and default_dns_prefix both can't be given. Changing this will force terraform to create new resource.
  /// [defaultDnsPrefix] The default DNS prefix for the network resource. Changing this will force terraform to create new resource. Changing this will force terraform to create new resource.
  /// [deleteAssociatedResources] If set to true deletes associated OCI resources. Default false.
  /// [displayName] The user-friendly name for the odb network. Changing this will force terraform to create a new resource.
  /// [kmsAccess] Specifies the configuration for KMS access from the ODB network.
  /// [kmsPolicyDocument] Specifies the endpoint policy for KMS access from the ODB network.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Access] Specifies the configuration for Amazon S3 access from the ODB network.
  /// [s3PolicyDocument] Specifies the endpoint policy for Amazon S3 access from the ODB network.
  /// [stsAccess] Specifies the configuration for STS access from the ODB network.
  /// [stsPolicyDocument] Specifies the endpoint policy for STS access from the ODB network.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [zeroEtlAccess] Specifies the configuration for Zero-ETL access from the ODB network.
  NetworkArgs({
    String? availabilityZone,
    required String availabilityZoneId,
    required String backupSubnetCidr,
    required String clientSubnetCidr,
    String? customDomainName,
    String? defaultDnsPrefix,
    bool? deleteAssociatedResources,
    required String displayName,
    String? kmsAccess,
    String? kmsPolicyDocument,
    String? region,
    required String s3Access,
    String? s3PolicyDocument,
    String? stsAccess,
    String? stsPolicyDocument,
    Map<String, String>? tags,
    NetworkTimeouts? timeouts,
    required String zeroEtlAccess,
  })  : availabilityZone =
            pulumi.Input.asOptionalInput<String>(availabilityZone),
        availabilityZoneId = pulumi.Input.asInput<String>(availabilityZoneId),
        backupSubnetCidr = pulumi.Input.asInput<String>(backupSubnetCidr),
        clientSubnetCidr = pulumi.Input.asInput<String>(clientSubnetCidr),
        customDomainName =
            pulumi.Input.asOptionalInput<String>(customDomainName),
        defaultDnsPrefix =
            pulumi.Input.asOptionalInput<String>(defaultDnsPrefix),
        deleteAssociatedResources =
            pulumi.Input.asOptionalInput<bool>(deleteAssociatedResources),
        displayName = pulumi.Input.asInput<String>(displayName),
        kmsAccess = pulumi.Input.asOptionalInput<String>(kmsAccess),
        kmsPolicyDocument =
            pulumi.Input.asOptionalInput<String>(kmsPolicyDocument),
        region = pulumi.Input.asOptionalInput<String>(region),
        s3Access = pulumi.Input.asInput<String>(s3Access),
        s3PolicyDocument =
            pulumi.Input.asOptionalInput<String>(s3PolicyDocument),
        stsAccess = pulumi.Input.asOptionalInput<String>(stsAccess),
        stsPolicyDocument =
            pulumi.Input.asOptionalInput<String>(stsPolicyDocument),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<NetworkTimeouts>(timeouts),
        zeroEtlAccess = pulumi.Input.asInput<String>(zeroEtlAccess);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    map['availabilityZoneId'] = availabilityZoneId;
    map['backupSubnetCidr'] = backupSubnetCidr;
    map['clientSubnetCidr'] = clientSubnetCidr;
    final customDomainNameValue = customDomainName;
    if (customDomainNameValue != null) {
      map['customDomainName'] = customDomainNameValue;
    }
    final defaultDnsPrefixValue = defaultDnsPrefix;
    if (defaultDnsPrefixValue != null) {
      map['defaultDnsPrefix'] = defaultDnsPrefixValue;
    }
    final deleteAssociatedResourcesValue = deleteAssociatedResources;
    if (deleteAssociatedResourcesValue != null) {
      map['deleteAssociatedResources'] = deleteAssociatedResourcesValue;
    }
    map['displayName'] = displayName;
    final kmsAccessValue = kmsAccess;
    if (kmsAccessValue != null) {
      map['kmsAccess'] = kmsAccessValue;
    }
    final kmsPolicyDocumentValue = kmsPolicyDocument;
    if (kmsPolicyDocumentValue != null) {
      map['kmsPolicyDocument'] = kmsPolicyDocumentValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3Access'] = s3Access;
    final s3PolicyDocumentValue = s3PolicyDocument;
    if (s3PolicyDocumentValue != null) {
      map['s3PolicyDocument'] = s3PolicyDocumentValue;
    }
    final stsAccessValue = stsAccess;
    if (stsAccessValue != null) {
      map['stsAccess'] = stsAccessValue;
    }
    final stsPolicyDocumentValue = stsPolicyDocument;
    if (stsPolicyDocumentValue != null) {
      map['stsPolicyDocument'] = stsPolicyDocumentValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<NetworkTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['zeroEtlAccess'] = zeroEtlAccess;
    return map;
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      backupSubnetCidr: map['backupSubnetCidr'] as String,
      clientSubnetCidr: map['clientSubnetCidr'] as String,
      customDomainName: map['customDomainName'] == null
          ? null
          : map['customDomainName'] as String,
      defaultDnsPrefix: map['defaultDnsPrefix'] == null
          ? null
          : map['defaultDnsPrefix'] as String,
      deleteAssociatedResources: map['deleteAssociatedResources'] == null
          ? null
          : map['deleteAssociatedResources'] as bool,
      displayName: map['displayName'] as String,
      kmsAccess: map['kmsAccess'] == null ? null : map['kmsAccess'] as String,
      kmsPolicyDocument: map['kmsPolicyDocument'] == null
          ? null
          : map['kmsPolicyDocument'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3Access: map['s3Access'] as String,
      s3PolicyDocument: map['s3PolicyDocument'] == null
          ? null
          : map['s3PolicyDocument'] as String,
      stsAccess: map['stsAccess'] == null ? null : map['stsAccess'] as String,
      stsPolicyDocument: map['stsPolicyDocument'] == null
          ? null
          : map['stsPolicyDocument'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : NetworkTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      zeroEtlAccess: map['zeroEtlAccess'] as String,
    );
  }
}
