// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_vm_cluster_properties/cloud_vm_cluster_properties.dart';

/// The set of arguments for CloudVmCluster.
class CloudVmClusterArgs {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? backupOdbSubnet;

  /// CIDR range of the backup subnet.
  final pulumi.Input<String>? backupSubnetCidr;

  /// Network settings. CIDR to use for cluster IP allocation.
  final pulumi.Input<String>? cidr;

  /// The ID of the VM Cluster to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> cloudVmClusterId;
  final pulumi.Input<bool>? deletionProtection;

  /// User friendly name for this resource.
  final pulumi.Input<String>? displayName;

  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  final pulumi.Input<String> exadataInfrastructure;

  /// Labels or tags associated with the VM Cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  final pulumi.Input<String> location;

  /// The name of the VPC network.
  /// Format: projects/{project}/global/networks/{network}
  final pulumi.Input<String>? network;

  /// The name of the OdbNetwork associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  final pulumi.Input<String>? odbNetwork;

  /// The name of the OdbSubnet associated with the VM Cluster for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  final pulumi.Input<String>? odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Various properties and settings associated with Exadata VM cluster.
  /// Structure is documented below.
  final pulumi.Input<CloudVmClusterProperties>? properties;

  CloudVmClusterArgs({
    this.backupOdbSubnet,
    this.backupSubnetCidr,
    this.cidr,
    required this.cloudVmClusterId,
    this.deletionProtection,
    this.displayName,
    required this.exadataInfrastructure,
    this.labels,
    required this.location,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.project,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupOdbSubnetValue = backupOdbSubnet;
    if (backupOdbSubnetValue != null) {
      map['backupOdbSubnet'] = backupOdbSubnetValue;
    }
    final backupSubnetCidrValue = backupSubnetCidr;
    if (backupSubnetCidrValue != null) {
      map['backupSubnetCidr'] = backupSubnetCidrValue;
    }
    final cidrValue = cidr;
    if (cidrValue != null) {
      map['cidr'] = cidrValue;
    }
    map['cloudVmClusterId'] = cloudVmClusterId;
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['exadataInfrastructure'] = exadataInfrastructure;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final odbNetworkValue = odbNetwork;
    if (odbNetworkValue != null) {
      map['odbNetwork'] = odbNetworkValue;
    }
    final odbSubnetValue = odbSubnet;
    if (odbSubnetValue != null) {
      map['odbSubnet'] = odbSubnetValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
          CloudVmClusterProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterArgs(
      backupOdbSubnet:
          pulumi.Input.asOptionalInput<String>(map['backupOdbSubnet']),
      backupSubnetCidr:
          pulumi.Input.asOptionalInput<String>(map['backupSubnetCidr']),
      cidr: pulumi.Input.asOptionalInput<String>(map['cidr']),
      cloudVmClusterId: pulumi.Input.asInput<String>(map['cloudVmClusterId']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      exadataInfrastructure:
          pulumi.Input.asInput<String>(map['exadataInfrastructure']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      odbNetwork: pulumi.Input.asOptionalInput<String>(map['odbNetwork']),
      odbSubnet: pulumi.Input.asOptionalInput<String>(map['odbSubnet']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      properties: pulumi.Input.asOptionalInput<CloudVmClusterProperties>(
          map['properties']),
    );
  }
}
