// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cloud_vm_clusters_cloud_vm_cluster_property/get_cloud_vm_clusters_cloud_vm_cluster_property.dart';

class GetCloudVmClustersCloudVmCluster {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final String backupOdbSubnet;

  /// CIDR range of the backup subnet.
  final String backupSubnetCidr;

  /// Network settings. CIDR to use for cluster IP allocation.
  final String cidr;

  /// The ID of the VM Cluster to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final String cloudVmClusterId;

  /// The date and time that the VM cluster was created.
  final String createTime;
  final bool deletionProtection;

  /// User friendly name for this resource.
  final String displayName;
  final Map<String, String> effectiveLabels;

  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  final String exadataInfrastructure;

  /// GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// of Exadata infrastructure.
  final String gcpOracleZone;

  /// Labels or tags associated with the VM Cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Map<String, String> labels;

  /// The location of the resource.
  ///
  /// - - -
  final String location;

  /// Identifier. The name of the VM Cluster resource with the format:
  /// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
  final String name;

  /// The name of the VPC network.
  /// Format: projects/{project}/global/networks/{network}
  final String network;

  /// The name of the OdbNetwork associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the<span pulumi-lang-nodejs=" odbSubnet " pulumi-lang-dotnet=" OdbSubnet " pulumi-lang-go=" odbSubnet " pulumi-lang-python=" odb_subnet " pulumi-lang-yaml=" odbSubnet " pulumi-lang-java=" odbSubnet "> odb_subnet </span>and backup_odb_subnet.
  final String odbNetwork;

  /// The name of the OdbSubnet associated with the VM Cluster for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final String odbSubnet;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final String project;

  /// Various properties and settings associated with Exadata VM cluster.
  final List<GetCloudVmClustersCloudVmClusterProperty> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  GetCloudVmClustersCloudVmCluster({
    required this.backupOdbSubnet,
    required this.backupSubnetCidr,
    required this.cidr,
    required this.cloudVmClusterId,
    required this.createTime,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.exadataInfrastructure,
    required this.gcpOracleZone,
    required this.labels,
    required this.location,
    required this.name,
    required this.network,
    required this.odbNetwork,
    required this.odbSubnet,
    required this.project,
    required this.properties,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupOdbSubnet'] = backupOdbSubnet;
    map['backupSubnetCidr'] = backupSubnetCidr;
    map['cidr'] = cidr;
    map['cloudVmClusterId'] = cloudVmClusterId;
    map['createTime'] = createTime;
    map['deletionProtection'] = deletionProtection;
    map['displayName'] = displayName;
    map['effectiveLabels'] = effectiveLabels;
    map['exadataInfrastructure'] = exadataInfrastructure;
    map['gcpOracleZone'] = gcpOracleZone;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    map['network'] = network;
    map['odbNetwork'] = odbNetwork;
    map['odbSubnet'] = odbSubnet;
    map['project'] = project;
    map['properties'] = Input.encodeList<
        GetCloudVmClustersCloudVmClusterProperty,
        Map<String, dynamic>>(properties, (value) => value.toMap());
    map['pulumiLabels'] = pulumiLabels;
    return map;
  }

  factory GetCloudVmClustersCloudVmCluster.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmCluster(
      backupOdbSubnet: map['backupOdbSubnet'] as String,
      backupSubnetCidr: map['backupSubnetCidr'] as String,
      cidr: map['cidr'] as String,
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      exadataInfrastructure: map['exadataInfrastructure'] as String,
      gcpOracleZone: map['gcpOracleZone'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      odbNetwork: map['odbNetwork'] as String,
      odbSubnet: map['odbSubnet'] as String,
      project: map['project'] as String,
      properties: Input.decodeList<GetCloudVmClustersCloudVmClusterProperty>(
          map['properties'],
          (value) => GetCloudVmClustersCloudVmClusterProperty.fromMap(
              (value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}
