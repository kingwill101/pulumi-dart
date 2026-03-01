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
    pulumi.Output<String>? availabilityZone,
    required pulumi.Output<String> availabilityZoneId,
    required pulumi.Output<String> backupSubnetCidr,
    required pulumi.Output<String> clientSubnetCidr,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<String>? defaultDnsPrefix,
    pulumi.Output<bool>? deleteAssociatedResources,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? kmsAccess,
    pulumi.Output<String>? kmsPolicyDocument,
    pulumi.Output<String>? region,
    required pulumi.Output<String> s3Access,
    pulumi.Output<String>? s3PolicyDocument,
    pulumi.Output<String>? stsAccess,
    pulumi.Output<String>? stsPolicyDocument,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<NetworkTimeouts>? timeouts,
    required pulumi.Output<String> zeroEtlAccess,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asInput<String>(availabilityZoneId),
      backupSubnetCidr = pulumi.Input.asInput<String>(backupSubnetCidr),
      clientSubnetCidr = pulumi.Input.asInput<String>(clientSubnetCidr),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      defaultDnsPrefix = pulumi.Input.asOptionalInput<String>(defaultDnsPrefix),
      deleteAssociatedResources = pulumi.Input.asOptionalInput<bool>(deleteAssociatedResources),
      displayName = pulumi.Input.asInput<String>(displayName),
      kmsAccess = pulumi.Input.asOptionalInput<String>(kmsAccess),
      kmsPolicyDocument = pulumi.Input.asOptionalInput<String>(kmsPolicyDocument),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3Access = pulumi.Input.asInput<String>(s3Access),
      s3PolicyDocument = pulumi.Input.asOptionalInput<String>(s3PolicyDocument),
      stsAccess = pulumi.Input.asOptionalInput<String>(stsAccess),
      stsPolicyDocument = pulumi.Input.asOptionalInput<String>(stsPolicyDocument),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<NetworkTimeouts>(timeouts),
      zeroEtlAccess = pulumi.Input.asInput<String>(zeroEtlAccess);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'backupSubnetCidr': backupSubnetCidr,
      'clientSubnetCidr': clientSubnetCidr,
      'customDomainName': ?customDomainName,
      'defaultDnsPrefix': ?defaultDnsPrefix,
      'deleteAssociatedResources': ?deleteAssociatedResources,
      'displayName': displayName,
      'kmsAccess': ?kmsAccess,
      'kmsPolicyDocument': ?kmsPolicyDocument,
      'region': ?region,
      's3Access': s3Access,
      's3PolicyDocument': ?s3PolicyDocument,
      'stsAccess': ?stsAccess,
      'stsPolicyDocument': ?stsPolicyDocument,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'zeroEtlAccess': zeroEtlAccess,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      backupSubnetCidr: pulumi.Output.create<String>(map['backupSubnetCidr'] as String),
      clientSubnetCidr: pulumi.Output.create<String>(map['clientSubnetCidr'] as String),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      defaultDnsPrefix: map['defaultDnsPrefix'] == null ? null : pulumi.Output.create<String>(map['defaultDnsPrefix'] as String),
      deleteAssociatedResources: map['deleteAssociatedResources'] == null ? null : pulumi.Output.create<bool>(map['deleteAssociatedResources'] as bool),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      kmsAccess: map['kmsAccess'] == null ? null : pulumi.Output.create<String>(map['kmsAccess'] as String),
      kmsPolicyDocument: map['kmsPolicyDocument'] == null ? null : pulumi.Output.create<String>(map['kmsPolicyDocument'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3Access: pulumi.Output.create<String>(map['s3Access'] as String),
      s3PolicyDocument: map['s3PolicyDocument'] == null ? null : pulumi.Output.create<String>(map['s3PolicyDocument'] as String),
      stsAccess: map['stsAccess'] == null ? null : pulumi.Output.create<String>(map['stsAccess'] as String),
      stsPolicyDocument: map['stsPolicyDocument'] == null ? null : pulumi.Output.create<String>(map['stsPolicyDocument'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NetworkTimeouts>(NetworkTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      zeroEtlAccess: pulumi.Output.create<String>(map['zeroEtlAccess'] as String),
    );
  }
}

