// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_timeouts.dart';

/// {@template pulumi_odb_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_odb_network_network_args_doc}
class NetworkArgs {
  /// Name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure `availabilityZone` maps correctly with `availabilityZoneId`.
  final pulumi.Input<String?>? availabilityZone;
  /// AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String> availabilityZoneId;
  /// CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  final pulumi.Input<String> backupSubnetCidr;
  /// CIDR notation for the network resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String> clientSubnetCidr;
  /// List of regions enabled for cross-region restore in the ODB network.
  final pulumi.Input<List<String>?>? crossRegionS3RestoreSourcesAccesses;
  /// Name of the custom domain that the network is located. `customDomainName` and `defaultDnsPrefix` both can't be given. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? customDomainName;
  /// Default DNS prefix for the network resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? defaultDnsPrefix;
  /// If set to true deletes associated OCI resources. Default false.
  final pulumi.Input<bool?>? deleteAssociatedResources;
  /// User-friendly name for the odb network. Changing this will force terraform to create a new resource.
  final pulumi.Input<String> displayName;
  /// Configuration for KMS access from the ODB network.
  final pulumi.Input<String?>? kmsAccess;
  /// Endpoint policy for KMS access from the ODB network.
  final pulumi.Input<String?>? kmsPolicyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration for Amazon S3 access from the ODB network.
  final pulumi.Input<String> s3Access;
  /// Endpoint policy for Amazon S3 access from the ODB network.
  final pulumi.Input<String?>? s3PolicyDocument;
  /// Configuration for STS access from the ODB network.
  final pulumi.Input<String?>? stsAccess;
  /// Endpoint policy for STS access from the ODB network.
  final pulumi.Input<String?>? stsPolicyDocument;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<NetworkTimeouts?>? timeouts;
  /// Configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> zeroEtlAccess;

  /// Creates a new [NetworkArgs].
  /// [availabilityZone] Name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure `availabilityZone` maps correctly with `availabilityZoneId`.
  /// [availabilityZoneId] AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  /// [backupSubnetCidr] CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  /// [clientSubnetCidr] CIDR notation for the network resource. Changing this will force terraform to create new resource.
  /// [crossRegionS3RestoreSourcesAccesses] List of regions enabled for cross-region restore in the ODB network.
  /// [customDomainName] Name of the custom domain that the network is located. `customDomainName` and `defaultDnsPrefix` both can't be given. Changing this will force terraform to create new resource.
  /// [defaultDnsPrefix] Default DNS prefix for the network resource. Changing this will force terraform to create new resource.
  /// [deleteAssociatedResources] If set to true deletes associated OCI resources. Default false.
  /// [displayName] User-friendly name for the odb network. Changing this will force terraform to create a new resource.
  /// [kmsAccess] Configuration for KMS access from the ODB network.
  /// [kmsPolicyDocument] Endpoint policy for KMS access from the ODB network.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Access] Configuration for Amazon S3 access from the ODB network.
  /// [s3PolicyDocument] Endpoint policy for Amazon S3 access from the ODB network.
  /// [stsAccess] Configuration for STS access from the ODB network.
  /// [stsPolicyDocument] Endpoint policy for STS access from the ODB network.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [zeroEtlAccess] Configuration for Zero-ETL access from the ODB network.
  const NetworkArgs({
    this.availabilityZone,
    required this.availabilityZoneId,
    required this.backupSubnetCidr,
    required this.clientSubnetCidr,
    this.crossRegionS3RestoreSourcesAccesses,
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
      'crossRegionS3RestoreSourcesAccesses': ?crossRegionS3RestoreSourcesAccesses,
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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: pulumi.Input.fromValue(map['availabilityZoneId'] as String),
      backupSubnetCidr: pulumi.Input.fromValue(map['backupSubnetCidr'] as String),
      clientSubnetCidr: pulumi.Input.fromValue(map['clientSubnetCidr'] as String),
      crossRegionS3RestoreSourcesAccesses: (() { final guardedValue = map['crossRegionS3RestoreSourcesAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDnsPrefix: (() { final guardedValue = map['defaultDnsPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAssociatedResources: (() { final guardedValue = map['deleteAssociatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      kmsAccess: (() { final guardedValue = map['kmsAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsPolicyDocument: (() { final guardedValue = map['kmsPolicyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Access: pulumi.Input.fromValue(map['s3Access'] as String),
      s3PolicyDocument: (() { final guardedValue = map['s3PolicyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stsAccess: (() { final guardedValue = map['stsAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stsPolicyDocument: (() { final guardedValue = map['stsPolicyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zeroEtlAccess: pulumi.Input.fromValue(map['zeroEtlAccess'] as String),
    );
  }
}
