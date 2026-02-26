// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_timeouts/network_timeouts.dart';

/// The set of arguments for Network.
class NetworkArgs {
  /// The name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure<span pulumi-lang-nodejs=" availabilityZone " pulumi-lang-dotnet=" AvailabilityZone " pulumi-lang-go=" availabilityZone " pulumi-lang-python=" availability_zone " pulumi-lang-yaml=" availabilityZone " pulumi-lang-java=" availabilityZone "> availability_zone </span>maps correctly with availability_zone_id.
  final Input<String>? availabilityZone;

  /// The AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  final Input<String> availabilityZoneId;

  /// The CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  final Input<String> backupSubnetCidr;

  /// The CIDR notation for the network resource. Changing this will force terraform to create new resource.
  final Input<String> clientSubnetCidr;

  /// The name of the custom domain that the network is located. Custom_domain_name and<span pulumi-lang-nodejs=" defaultDnsPrefix " pulumi-lang-dotnet=" DefaultDnsPrefix " pulumi-lang-go=" defaultDnsPrefix " pulumi-lang-python=" default_dns_prefix " pulumi-lang-yaml=" defaultDnsPrefix " pulumi-lang-java=" defaultDnsPrefix "> default_dns_prefix </span>both can't be given. Changing this will force terraform to create new resource.
  final Input<String>? customDomainName;

  /// The default DNS prefix for the network resource. Changing this will force terraform to create new resource. Changing this will force terraform to create new resource.
  final Input<String>? defaultDnsPrefix;

  /// If set to true deletes associated OCI resources. Default false.
  final Input<bool>? deleteAssociatedResources;

  /// The user-friendly name for the odb network. Changing this will force terraform to create a new resource.
  final Input<String> displayName;

  /// Specifies the configuration for KMS access from the ODB network.
  final Input<String>? kmsAccess;

  /// Specifies the endpoint policy for KMS access from the ODB network.
  final Input<String>? kmsPolicyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the configuration for Amazon S3 access from the ODB network.
  final Input<String> s3Access;

  /// Specifies the endpoint policy for Amazon S3 access from the ODB network.
  final Input<String>? s3PolicyDocument;

  /// Specifies the configuration for STS access from the ODB network.
  final Input<String>? stsAccess;

  /// Specifies the endpoint policy for STS access from the ODB network.
  final Input<String>? stsPolicyDocument;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<NetworkTimeouts>? timeouts;

  /// Specifies the configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final Input<String> zeroEtlAccess;

  NetworkArgs({
    this.availabilityZone,
    required this.availabilityZoneId,
    required this.backupSubnetCidr,
    required this.clientSubnetCidr,
    this.customDomainName,
    this.defaultDnsPrefix,
    this.deleteAssociatedResources,
    required this.displayName,
    this.kmsAccess,
    this.kmsPolicyDocument,
    this.region,
    required this.s3Access,
    this.s3PolicyDocument,
    this.stsAccess,
    this.stsPolicyDocument,
    this.tags,
    this.timeouts,
    required this.zeroEtlAccess,
  });

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
      map['timeouts'] =
          Input.mapOptionalInputValue<NetworkTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    map['zeroEtlAccess'] = zeroEtlAccess;
    return map;
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneId: Input.asInput<String>(map['availabilityZoneId']),
      backupSubnetCidr: Input.asInput<String>(map['backupSubnetCidr']),
      clientSubnetCidr: Input.asInput<String>(map['clientSubnetCidr']),
      customDomainName: Input.asOptionalInput<String>(map['customDomainName']),
      defaultDnsPrefix: Input.asOptionalInput<String>(map['defaultDnsPrefix']),
      deleteAssociatedResources:
          Input.asOptionalInput<bool>(map['deleteAssociatedResources']),
      displayName: Input.asInput<String>(map['displayName']),
      kmsAccess: Input.asOptionalInput<String>(map['kmsAccess']),
      kmsPolicyDocument:
          Input.asOptionalInput<String>(map['kmsPolicyDocument']),
      region: Input.asOptionalInput<String>(map['region']),
      s3Access: Input.asInput<String>(map['s3Access']),
      s3PolicyDocument: Input.asOptionalInput<String>(map['s3PolicyDocument']),
      stsAccess: Input.asOptionalInput<String>(map['stsAccess']),
      stsPolicyDocument:
          Input.asOptionalInput<String>(map['stsPolicyDocument']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<NetworkTimeouts>(map['timeouts']),
      zeroEtlAccess: Input.asInput<String>(map['zeroEtlAccess']),
    );
  }
}
