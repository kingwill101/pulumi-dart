// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_managed_service.dart';
import 'get_network_oci_dns_forwarding_config.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
  /// ARN of the odb network resource.
  final String? arn;
  /// Availability zone where the ODB network is located.
  final String? availabilityZone;
  /// AZ ID of the AZ where the ODB network is located.
  final String? availabilityZoneId;
  /// CIDR range of the backup subnet for the ODB network.
  final String? backupSubnetCidr;
  /// CIDR notation for the network resource.
  final String? clientSubnetCidr;
  /// Date and time when the ODB network was created.
  final String? createdAt;
  /// Name of the custom domain that the network is located.
  final String? customDomainName;
  /// Default DNS prefix for the network resource.
  final String? defaultDnsPrefix;
  /// Display name for the network resource.
  final String? displayName;
  /// List of EC2 placement group IDs associated with the ODB network.
  final List<String>? ec2PlacementGroupIds;
  /// Unique identifier of the odb network resource.
  final String? id;
  /// Managed services configuration for the ODB network.
  final List<GetNetworkManagedService>? managedServices;
  /// DNS resolver endpoint in OCI for forwarding DNS queries for the ociPrivateZone domain.
  final List<GetNetworkOciDnsForwardingConfig>? ociDnsForwardingConfigs;
  /// Unique identifier of the OCI network anchor for the ODB network.
  final String? ociNetworkAnchorId;
  /// URL of the OCI network anchor for the ODB network.
  final String? ociNetworkAnchorUrl;
  /// Name of the OCI resource anchor for the ODB network.
  final String? ociResourceAnchorName;
  /// Unique identifier Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  final String? ociVcnId;
  /// URL of the OCI VCN for the ODB network.
  final String? ociVcnUrl;
  /// List of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  final List<String>? peeredCidrs;
  /// Amount of progress made on the current operation on the ODB network, expressed as a percentage.
  final double? percentProgress;
  final String? region;
  /// Status of the network resource.
  final String? status;
  /// Additional information about the current status of the ODB network.
  final String? statusReason;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkResult].
  /// [arn] ARN of the odb network resource.
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
  /// [region] Optional.
  /// [status] Status of the network resource.
  /// [statusReason] Additional information about the current status of the ODB network.
  /// [tags] Map of tags assigned to the resource.
  const GetNetworkResult({
    this.arn,
    this.availabilityZone,
    this.availabilityZoneId,
    this.backupSubnetCidr,
    this.clientSubnetCidr,
    this.createdAt,
    this.customDomainName,
    this.defaultDnsPrefix,
    this.displayName,
    this.ec2PlacementGroupIds,
    this.id,
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
    this.status,
    this.statusReason,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'backupSubnetCidr': ?backupSubnetCidr,
      'clientSubnetCidr': ?clientSubnetCidr,
      'createdAt': ?createdAt,
      'customDomainName': ?customDomainName,
      'defaultDnsPrefix': ?defaultDnsPrefix,
      'displayName': ?displayName,
      'ec2PlacementGroupIds': ?ec2PlacementGroupIds,
      'id': ?id,
      'managedServices': ?(() { final guardedValue = managedServices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkManagedService, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ociDnsForwardingConfigs': ?(() { final guardedValue = ociDnsForwardingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkOciDnsForwardingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ociNetworkAnchorId': ?ociNetworkAnchorId,
      'ociNetworkAnchorUrl': ?ociNetworkAnchorUrl,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociVcnId': ?ociVcnId,
      'ociVcnUrl': ?ociVcnUrl,
      'peeredCidrs': ?peeredCidrs,
      'percentProgress': ?percentProgress,
      'region': ?region,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupSubnetCidr: (() { final guardedValue = map['backupSubnetCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSubnetCidr: (() { final guardedValue = map['clientSubnetCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDnsPrefix: (() { final guardedValue = map['defaultDnsPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ec2PlacementGroupIds: (() { final guardedValue = map['ec2PlacementGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedServices: (() { final guardedValue = map['managedServices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkManagedService>(guardedValue, (value) => GetNetworkManagedService.fromMap((value as Map).cast<String, dynamic>())); })(),
      ociDnsForwardingConfigs: (() { final guardedValue = map['ociDnsForwardingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkOciDnsForwardingConfig>(guardedValue, (value) => GetNetworkOciDnsForwardingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      ociNetworkAnchorId: (() { final guardedValue = map['ociNetworkAnchorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociNetworkAnchorUrl: (() { final guardedValue = map['ociNetworkAnchorUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociVcnId: (() { final guardedValue = map['ociVcnId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociVcnUrl: (() { final guardedValue = map['ociVcnUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peeredCidrs: (() { final guardedValue = map['peeredCidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
