// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_managed_service.dart';
import 'network_oci_dns_forwarding_config.dart';
import 'network_timeouts.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// Amazon Resource Name (ARN) of the odb network resource.
  final pulumi.Input<String>? arn;
  /// Name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure `availabilityZone` maps correctly with `availabilityZoneId`.
  final pulumi.Input<String>? availabilityZone;
  /// AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? availabilityZoneId;
  /// CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? backupSubnetCidr;
  /// CIDR notation for the network resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? clientSubnetCidr;
  /// Date and time when the ODB network was created.
  final pulumi.Input<String>? createdAt;
  /// List of regions enabled for cross-region restore in the ODB network.
  final pulumi.Input<List<String>>? crossRegionS3RestoreSourcesAccesses;
  /// Name of the custom domain that the network is located. `customDomainName` and `defaultDnsPrefix` both can't be given. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? customDomainName;
  /// Default DNS prefix for the network resource. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? defaultDnsPrefix;
  /// If set to true deletes associated OCI resources. Default false.
  final pulumi.Input<bool>? deleteAssociatedResources;
  /// User-friendly name for the odb network. Changing this will force terraform to create a new resource.
  final pulumi.Input<String>? displayName;
  /// List of EC2 placement group IDs associated with the ODB network.
  final pulumi.Input<List<String>>? ec2PlacementGroupIds;
  /// Configuration for KMS access from the ODB network.
  final pulumi.Input<String>? kmsAccess;
  /// Endpoint policy for KMS access from the ODB network.
  final pulumi.Input<String>? kmsPolicyDocument;
  /// Managed services configuration for the ODB network. See `managedServices` Block below.
  final pulumi.Input<List<NetworkManagedService>>? managedServices;
  /// DNS resolver endpoints in OCI for forwarding DNS queries for the `ociPrivateZone` domain. See `ociDnsForwardingConfigs` Block below.
  final pulumi.Input<List<NetworkOciDnsForwardingConfig>>? ociDnsForwardingConfigs;
  /// Unique identifier of the OCI network anchor for the ODB network.
  final pulumi.Input<String>? ociNetworkAnchorId;
  /// URL of the OCI network anchor for the ODB network.
  final pulumi.Input<String>? ociNetworkAnchorUrl;
  /// Name of the OCI resource anchor for the ODB network.
  final pulumi.Input<String>? ociResourceAnchorName;
  /// Unique identifier Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  final pulumi.Input<String>? ociVcnId;
  /// URL of the OCI VCN for the ODB network.
  final pulumi.Input<String>? ociVcnUrl;
  /// List of CIDR ranges from the peered VPC that are allowed access to the ODB network. See the [ODB network peering documentation](https://docs.aws.amazon.com/odb/latest/UserGuide/network-peering.html) for more information.
  final pulumi.Input<List<String>>? peeredCidrs;
  /// Amount of progress made on the current operation on the ODB network, expressed as a percentage.
  final pulumi.Input<double>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for Amazon S3 access from the ODB network.
  final pulumi.Input<String>? s3Access;
  /// Endpoint policy for Amazon S3 access from the ODB network.
  final pulumi.Input<String>? s3PolicyDocument;
  /// Status of the Zero-ETL access.
  final pulumi.Input<String>? status;
  /// Additional information about the current status of the ODB network.
  final pulumi.Input<String>? statusReason;
  /// Configuration for STS access from the ODB network.
  final pulumi.Input<String>? stsAccess;
  /// Endpoint policy for STS access from the ODB network.
  final pulumi.Input<String>? stsPolicyDocument;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<NetworkTimeouts>? timeouts;
  /// Configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? zeroEtlAccess;

  /// Creates a new [NetworkState].
  /// [arn] Amazon Resource Name (ARN) of the odb network resource.
  /// [availabilityZone] Name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure `availabilityZone` maps correctly with `availabilityZoneId`.
  /// [availabilityZoneId] AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  /// [backupSubnetCidr] CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  /// [clientSubnetCidr] CIDR notation for the network resource. Changing this will force terraform to create new resource.
  /// [createdAt] Date and time when the ODB network was created.
  /// [crossRegionS3RestoreSourcesAccesses] List of regions enabled for cross-region restore in the ODB network.
  /// [customDomainName] Name of the custom domain that the network is located. `customDomainName` and `defaultDnsPrefix` both can't be given. Changing this will force terraform to create new resource.
  /// [defaultDnsPrefix] Default DNS prefix for the network resource. Changing this will force terraform to create new resource.
  /// [deleteAssociatedResources] If set to true deletes associated OCI resources. Default false.
  /// [displayName] User-friendly name for the odb network. Changing this will force terraform to create a new resource.
  /// [ec2PlacementGroupIds] List of EC2 placement group IDs associated with the ODB network.
  /// [kmsAccess] Configuration for KMS access from the ODB network.
  /// [kmsPolicyDocument] Endpoint policy for KMS access from the ODB network.
  /// [managedServices] Managed services configuration for the ODB network. See `managedServices` Block below.
  /// [ociDnsForwardingConfigs] DNS resolver endpoints in OCI for forwarding DNS queries for the `ociPrivateZone` domain. See `ociDnsForwardingConfigs` Block below.
  /// [ociNetworkAnchorId] Unique identifier of the OCI network anchor for the ODB network.
  /// [ociNetworkAnchorUrl] URL of the OCI network anchor for the ODB network.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the ODB network.
  /// [ociVcnId] Unique identifier Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  /// [ociVcnUrl] URL of the OCI VCN for the ODB network.
  /// [peeredCidrs] List of CIDR ranges from the peered VPC that are allowed access to the ODB network. See the [ODB network peering documentation](https://docs.aws.amazon.com/odb/latest/UserGuide/network-peering.html) for more information.
  /// [percentProgress] Amount of progress made on the current operation on the ODB network, expressed as a percentage.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Access] Configuration for Amazon S3 access from the ODB network.
  /// [s3PolicyDocument] Endpoint policy for Amazon S3 access from the ODB network.
  /// [status] Status of the Zero-ETL access.
  /// [statusReason] Additional information about the current status of the ODB network.
  /// [stsAccess] Configuration for STS access from the ODB network.
  /// [stsPolicyDocument] Endpoint policy for STS access from the ODB network.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [zeroEtlAccess] Configuration for Zero-ETL access from the ODB network.
  const NetworkState({
    this.arn,
    this.availabilityZone,
    this.availabilityZoneId,
    this.backupSubnetCidr,
    this.clientSubnetCidr,
    this.createdAt,
    this.crossRegionS3RestoreSourcesAccesses,
    this.customDomainName,
    this.defaultDnsPrefix,
    this.deleteAssociatedResources,
    this.displayName,
    this.ec2PlacementGroupIds,
    this.kmsAccess,
    this.kmsPolicyDocument,
    this.managedServices,
    this.ociDnsForwardingConfigs,
    this.ociNetworkAnchorId,
    this.ociNetworkAnchorUrl,
    this.ociResourceAnchorName,
    this.ociVcnId,
    this.ociVcnUrl,
    this.peeredCidrs,
    this.percentProgress,
    this.region,
    this.s3Access,
    this.s3PolicyDocument,
    this.status,
    this.statusReason,
    this.stsAccess,
    this.stsPolicyDocument,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.zeroEtlAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'backupSubnetCidr': ?backupSubnetCidr,
      'clientSubnetCidr': ?clientSubnetCidr,
      'createdAt': ?createdAt,
      'crossRegionS3RestoreSourcesAccesses': ?crossRegionS3RestoreSourcesAccesses,
      'customDomainName': ?customDomainName,
      'defaultDnsPrefix': ?defaultDnsPrefix,
      'deleteAssociatedResources': ?deleteAssociatedResources,
      'displayName': ?displayName,
      'ec2PlacementGroupIds': ?ec2PlacementGroupIds,
      'kmsAccess': ?kmsAccess,
      'kmsPolicyDocument': ?kmsPolicyDocument,
      'managedServices': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagedService>, List<Map<String, dynamic>>>(managedServices, (value) => pulumi.Input.encodeList<NetworkManagedService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ociDnsForwardingConfigs': ?pulumi.Input.mapOptionalInputValue<List<NetworkOciDnsForwardingConfig>, List<Map<String, dynamic>>>(ociDnsForwardingConfigs, (value) => pulumi.Input.encodeList<NetworkOciDnsForwardingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ociNetworkAnchorId': ?ociNetworkAnchorId,
      'ociNetworkAnchorUrl': ?ociNetworkAnchorUrl,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociVcnId': ?ociVcnId,
      'ociVcnUrl': ?ociVcnUrl,
      'peeredCidrs': ?peeredCidrs,
      'percentProgress': ?percentProgress,
      'region': ?region,
      's3Access': ?s3Access,
      's3PolicyDocument': ?s3PolicyDocument,
      'status': ?status,
      'statusReason': ?statusReason,
      'stsAccess': ?stsAccess,
      'stsPolicyDocument': ?stsPolicyDocument,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'zeroEtlAccess': ?zeroEtlAccess,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupSubnetCidr: (() { final guardedValue = map['backupSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSubnetCidr: (() { final guardedValue = map['clientSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossRegionS3RestoreSourcesAccesses: (() { final guardedValue = map['crossRegionS3RestoreSourcesAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDnsPrefix: (() { final guardedValue = map['defaultDnsPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAssociatedResources: (() { final guardedValue = map['deleteAssociatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ec2PlacementGroupIds: (() { final guardedValue = map['ec2PlacementGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kmsAccess: (() { final guardedValue = map['kmsAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsPolicyDocument: (() { final guardedValue = map['kmsPolicyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedServices: (() { final guardedValue = map['managedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagedService>(guardedValue, (value) => NetworkManagedService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ociDnsForwardingConfigs: (() { final guardedValue = map['ociDnsForwardingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkOciDnsForwardingConfig>(guardedValue, (value) => NetworkOciDnsForwardingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ociNetworkAnchorId: (() { final guardedValue = map['ociNetworkAnchorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociNetworkAnchorUrl: (() { final guardedValue = map['ociNetworkAnchorUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociVcnId: (() { final guardedValue = map['ociVcnId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociVcnUrl: (() { final guardedValue = map['ociVcnUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeredCidrs: (() { final guardedValue = map['peeredCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Access: (() { final guardedValue = map['s3Access']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3PolicyDocument: (() { final guardedValue = map['s3PolicyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stsAccess: (() { final guardedValue = map['stsAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stsPolicyDocument: (() { final guardedValue = map['stsPolicyDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zeroEtlAccess: (() { final guardedValue = map['zeroEtlAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
