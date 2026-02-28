// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_managed_service.dart';
import 'get_network_oci_dns_forwarding_config.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
  /// Amazon Resource Name (ARN) of the odb network resource.
  final String arn;

  /// The availability zone where the ODB network is located.
  final String availabilityZone;

  /// The AZ ID of the AZ where the ODB network is located.
  final String availabilityZoneId;

  /// The CIDR range of the backup subnet for the ODB network.
  final String backupSubnetCidr;

  /// The CIDR notation for the network resource.
  final String clientSubnetCidr;

  /// The date and time when the ODB network was created.
  final String createdAt;

  /// The name of the custom domain that the network is located.
  final String customDomainName;

  /// The default DNS prefix for the network resource.
  final String defaultDnsPrefix;

  /// Display name for the network resource.
  final String displayName;

  /// Unique identifier of the odb network resource.
  final String id;

  /// The managed services configuration for the ODB network.
  final List<GetNetworkManagedService> managedServices;
  final List<GetNetworkOciDnsForwardingConfig> ociDnsForwardingConfigs;

  /// The unique identifier of the OCI network anchor for the ODB network.
  final String ociNetworkAnchorId;

  /// The URL of the OCI network anchor for the ODB network.
  final String ociNetworkAnchorUrl;

  /// The name of the OCI resource anchor for the ODB network.
  final String ociResourceAnchorName;

  /// The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  final String ociVcnId;

  /// The URL of the OCI VCN for the ODB network.
  final String ociVcnUrl;

  /// The list of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  final List<String> peeredCidrs;

  /// The amount of progress made on the current operation on the ODB network, expressed as a percentage.
  final double percentProgress;
  final String region;

  /// The status of the network resource.
  final String status;

  /// Additional information about the current status of the ODB network.
  final String statusReason;
  final Map<String, String> tags;

  /// Creates a new [GetNetworkResult].
  /// [arn] Amazon Resource Name (ARN) of the odb network resource.
  /// [availabilityZone] The availability zone where the ODB network is located.
  /// [availabilityZoneId] The AZ ID of the AZ where the ODB network is located.
  /// [backupSubnetCidr] The CIDR range of the backup subnet for the ODB network.
  /// [clientSubnetCidr] The CIDR notation for the network resource.
  /// [createdAt] The date and time when the ODB network was created.
  /// [customDomainName] The name of the custom domain that the network is located.
  /// [defaultDnsPrefix] The default DNS prefix for the network resource.
  /// [displayName] Display name for the network resource.
  /// [id] Unique identifier of the odb network resource.
  /// [managedServices] The managed services configuration for the ODB network.
  /// [ociDnsForwardingConfigs] Required.
  /// [ociNetworkAnchorId] The unique identifier of the OCI network anchor for the ODB network.
  /// [ociNetworkAnchorUrl] The URL of the OCI network anchor for the ODB network.
  /// [ociResourceAnchorName] The name of the OCI resource anchor for the ODB network.
  /// [ociVcnId] The unique identifier  Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  /// [ociVcnUrl] The URL of the OCI VCN for the ODB network.
  /// [peeredCidrs] The list of CIDR ranges from the peered VPC that are allowed access to the ODB network. Please refer odb network peering documentation.
  /// [percentProgress] The amount of progress made on the current operation on the ODB network, expressed as a percentage.
  /// [region] Required.
  /// [status] The status of the network resource.
  /// [statusReason] Additional information about the current status of the ODB network.
  /// [tags] Required.
  GetNetworkResult({
    required this.arn,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.backupSubnetCidr,
    required this.clientSubnetCidr,
    required this.createdAt,
    required this.customDomainName,
    required this.defaultDnsPrefix,
    required this.displayName,
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['availabilityZone'] = availabilityZone;
    map['availabilityZoneId'] = availabilityZoneId;
    map['backupSubnetCidr'] = backupSubnetCidr;
    map['clientSubnetCidr'] = clientSubnetCidr;
    map['createdAt'] = createdAt;
    map['customDomainName'] = customDomainName;
    map['defaultDnsPrefix'] = defaultDnsPrefix;
    map['displayName'] = displayName;
    map['id'] = id;
    map['managedServices'] =
        pulumi.Input.encodeList<GetNetworkManagedService, Map<String, dynamic>>(
            managedServices, (value) => value.toMap());
    map['ociDnsForwardingConfigs'] = pulumi.Input.encodeList<
            GetNetworkOciDnsForwardingConfig, Map<String, dynamic>>(
        ociDnsForwardingConfigs, (value) => value.toMap());
    map['ociNetworkAnchorId'] = ociNetworkAnchorId;
    map['ociNetworkAnchorUrl'] = ociNetworkAnchorUrl;
    map['ociResourceAnchorName'] = ociResourceAnchorName;
    map['ociVcnId'] = ociVcnId;
    map['ociVcnUrl'] = ociVcnUrl;
    map['peeredCidrs'] = peeredCidrs;
    map['percentProgress'] = percentProgress;
    map['region'] = region;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['tags'] = tags;
    return map;
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
      id: map['id'] as String,
      managedServices: pulumi.Input.decodeList<GetNetworkManagedService>(
          map['managedServices'],
          (value) => GetNetworkManagedService.fromMap(
              (value as Map).cast<String, dynamic>())),
      ociDnsForwardingConfigs:
          pulumi.Input.decodeList<GetNetworkOciDnsForwardingConfig>(
              map['ociDnsForwardingConfigs'],
              (value) => GetNetworkOciDnsForwardingConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
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
