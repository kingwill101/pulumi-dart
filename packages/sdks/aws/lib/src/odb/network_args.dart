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
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      availabilityZoneId: (map['availabilityZoneId'] as String).input(),
      backupSubnetCidr: (map['backupSubnetCidr'] as String).input(),
      clientSubnetCidr: (map['clientSubnetCidr'] as String).input(),
      customDomainName: map['customDomainName'] == null ? null : ((map['customDomainName'] as String).input()).input(),
      defaultDnsPrefix: map['defaultDnsPrefix'] == null ? null : ((map['defaultDnsPrefix'] as String).input()).input(),
      deleteAssociatedResources: map['deleteAssociatedResources'] == null ? null : ((map['deleteAssociatedResources'] as bool).input()).input(),
      displayName: (map['displayName'] as String).input(),
      kmsAccess: map['kmsAccess'] == null ? null : ((map['kmsAccess'] as String).input()).input(),
      kmsPolicyDocument: map['kmsPolicyDocument'] == null ? null : ((map['kmsPolicyDocument'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3Access: (map['s3Access'] as String).input(),
      s3PolicyDocument: map['s3PolicyDocument'] == null ? null : ((map['s3PolicyDocument'] as String).input()).input(),
      stsAccess: map['stsAccess'] == null ? null : ((map['stsAccess'] as String).input()).input(),
      stsPolicyDocument: map['stsPolicyDocument'] == null ? null : ((map['stsPolicyDocument'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((NetworkTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      zeroEtlAccess: (map['zeroEtlAccess'] as String).input(),
    );
  }
}

