// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_managed_service.dart';
import 'get_network_oci_dns_forwarding_config.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
  /// Amazon Resource Name (ARN) of the odb network resource.
  final String arn;
  /// Availability zone where the ODB network is located.
  final String availabilityZone;
  /// AZ ID of the AZ where the ODB network is located.
  final String availabilityZoneId;
  /// CIDR range of the backup subnet for the ODB network.
  final String backupSubnetCidr;
  /// CIDR notation for the network resource.
  final String clientSubnetCidr;
  /// Date and time when the ODB network was created.
  final String createdAt;
  /// Name of the custom domain that the network is located.
  final String customDomainName;
  /// Default DNS prefix for the network resource.
  final String defaultDnsPrefix;
  /// Display name for the network resource.
  final String displayName;
  /// List of EC2 placement group IDs associated with the ODB network.
  final List<String> ec2PlacementGroupIds;
  /// Unique identifier of the odb network resource.
  final String id;
  /// Managed services configuration for the ODB network.
  final List<GetNetworkManagedService> managedServices;
  /// DNS resolver endpoint in OCI for forwarding DNS queries for the ociPrivateZone domain.
  final List<GetNetworkOciDnsForwardingConfig> ociDnsForwardingConfigs;
  /// Unique identifier of the OCI network anchor for the ODB network.
  final String ociNetworkAnchorId;
  /// URL of the OCI network anchor for the ODB network.
  final String ociNetworkAnchorUrl;
  /// Name of the OCI resource anchor for the ODB network.
  final String ociResourceAnchorName;
  /// Unique identifier Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  final String ociVcnId;
  /// URL of the OCI VCN for the ODB network.
  final String ociVcnUrl;
  /// List of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  final List<String> peeredCidrs;
  /// Amount of progress made on the current operation on the ODB network, expressed as a percentage.
  final double percentProgress;
  final String region;
  /// Status of the network resource.
  final String status;
  /// Additional information about the current status of the ODB network.
  final String statusReason;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetNetworkResult].
  /// [arn] Amazon Resource Name (ARN) of the odb network resource.
  /// [availabilityZone] Availability zone where the ODB network is located.
  /// [availabilityZoneId] AZ ID of the AZ where the ODB network is located.
  /// [backupSubnetCidr] CIDR range of the backup subnet for the ODB network.
  /// [clientSubnetCidr] CIDR notation for the network resource.
  /// [createdAt] Date and time when the ODB network was created.
  /// [customDomainName] Name of the custom domain that the network is located.
  /// [defaultDnsPrefix] Default DNS prefix for the network resource.
  /// [displayName] Display name for the network resource.
  /// [ec2PlacementGroupIds] List of EC2 placement group IDs associated with the ODB network.
  /// [id] Unique identifier of the odb network resource.
  /// [managedServices] Managed services configuration for the ODB network.
  /// [ociDnsForwardingConfigs] DNS resolver endpoint in OCI for forwarding DNS queries for the ociPrivateZone domain.
  /// [ociNetworkAnchorId] Unique identifier of the OCI network anchor for the ODB network.
  /// [ociNetworkAnchorUrl] URL of the OCI network anchor for the ODB network.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the ODB network.
  /// [ociVcnId] Unique identifier Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  /// [ociVcnUrl] URL of the OCI VCN for the ODB network.
  /// [peeredCidrs] List of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  /// [percentProgress] Amount of progress made on the current operation on the ODB network, expressed as a percentage.
  /// [region] Required.
  /// [status] Status of the network resource.
  /// [statusReason] Additional information about the current status of the ODB network.
  /// [tags] Map of tags assigned to the resource.
  const GetNetworkResult({
    required this.arn,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.backupSubnetCidr,
    required this.clientSubnetCidr,
    required this.createdAt,
    required this.customDomainName,
    required this.defaultDnsPrefix,
    required this.displayName,
    required this.ec2PlacementGroupIds,
    required this.id,
    required this.managedServices,
    required this.ociDnsForwardingConfigs,
    required this.ociNetworkAnchorId,
    required this.ociNetworkAnchorUrl,
    required this.ociResourceAnchorName,
    required this.ociVcnId,
    required this.ociVcnUrl,
    required this.peeredCidrs,
    required this.percentProgress,
    required this.region,
    required this.status,
    required this.statusReason,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'backupSubnetCidr': backupSubnetCidr,
      'clientSubnetCidr': clientSubnetCidr,
      'createdAt': createdAt,
      'customDomainName': customDomainName,
      'defaultDnsPrefix': defaultDnsPrefix,
      'displayName': displayName,
      'ec2PlacementGroupIds': ec2PlacementGroupIds,
      'id': id,
      'managedServices': pulumi.Input.encodeList<GetNetworkManagedService, Map<String, dynamic>>(managedServices, (value) => value.toMap()),
      'ociDnsForwardingConfigs': pulumi.Input.encodeList<GetNetworkOciDnsForwardingConfig, Map<String, dynamic>>(ociDnsForwardingConfigs, (value) => value.toMap()),
      'ociNetworkAnchorId': ociNetworkAnchorId,
      'ociNetworkAnchorUrl': ociNetworkAnchorUrl,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ociVcnId': ociVcnId,
      'ociVcnUrl': ociVcnUrl,
      'peeredCidrs': peeredCidrs,
      'percentProgress': percentProgress,
      'region': region,
      'status': status,
      'statusReason': statusReason,
      'tags': tags,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      arn: map['arn'] as String,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      backupSubnetCidr: map['backupSubnetCidr'] as String,
      clientSubnetCidr: map['clientSubnetCidr'] as String,
      createdAt: map['createdAt'] as String,
      customDomainName: map['customDomainName'] as String,
      defaultDnsPrefix: map['defaultDnsPrefix'] as String,
      displayName: map['displayName'] as String,
      ec2PlacementGroupIds: (map['ec2PlacementGroupIds'] as List).cast<String>(),
      id: map['id'] as String,
      managedServices: pulumi.Input.decodeList<GetNetworkManagedService>(map['managedServices']!, (value) => GetNetworkManagedService.fromMap((value as Map).cast<String, dynamic>())),
      ociDnsForwardingConfigs: pulumi.Input.decodeList<GetNetworkOciDnsForwardingConfig>(map['ociDnsForwardingConfigs']!, (value) => GetNetworkOciDnsForwardingConfig.fromMap((value as Map).cast<String, dynamic>())),
      ociNetworkAnchorId: map['ociNetworkAnchorId'] as String,
      ociNetworkAnchorUrl: map['ociNetworkAnchorUrl'] as String,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ociVcnId: map['ociVcnId'] as String,
      ociVcnUrl: map['ociVcnUrl'] as String,
      peeredCidrs: (map['peeredCidrs'] as List).cast<String>(),
      percentProgress: map['percentProgress'] as double,
      region: map['region'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
