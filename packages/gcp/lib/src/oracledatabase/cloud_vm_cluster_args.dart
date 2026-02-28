// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_properties.dart';

/// {@template pulumi_oracledatabase_cloud_vm_cluster_cloud_vm_cluster_args_doc}
/// The set of arguments for CloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_cloud_vm_cluster_cloud_vm_cluster_args_doc}
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

  /// Creates a new [CloudVmClusterArgs].
  /// [backupOdbSubnet] The name of the backup OdbSubnet associated with the VM Cluster.
  /// [backupSubnetCidr] CIDR range of the backup subnet.
  /// [cidr] Network settings. CIDR to use for cluster IP allocation.
  /// [cloudVmClusterId] The ID of the VM Cluster to create. This value is restricted
  /// [deletionProtection] Optional.
  /// [displayName] User friendly name for this resource.
  /// [exadataInfrastructure] The name of the Exadata Infrastructure resource on which VM cluster
  /// [labels] Labels or tags associated with the VM Cluster.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  /// [network] The name of the VPC network.
  /// [odbNetwork] The name of the OdbNetwork associated with the VM Cluster.
  /// [odbSubnet] The name of the OdbSubnet associated with the VM Cluster for
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Various properties and settings associated with Exadata VM cluster.
  CloudVmClusterArgs({
    String? backupOdbSubnet,
    String? backupSubnetCidr,
    String? cidr,
    required String cloudVmClusterId,
    bool? deletionProtection,
    String? displayName,
    required String exadataInfrastructure,
    Map<String, String>? labels,
    required String location,
    String? network,
    String? odbNetwork,
    String? odbSubnet,
    String? project,
    CloudVmClusterProperties? properties,
  }) :
      backupOdbSubnet = pulumi.Input.asOptionalInput<String>(backupOdbSubnet),
      backupSubnetCidr = pulumi.Input.asOptionalInput<String>(backupSubnetCidr),
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      cloudVmClusterId = pulumi.Input.asInput<String>(cloudVmClusterId),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      exadataInfrastructure = pulumi.Input.asInput<String>(exadataInfrastructure),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      network = pulumi.Input.asOptionalInput<String>(network),
      odbNetwork = pulumi.Input.asOptionalInput<String>(odbNetwork),
      odbSubnet = pulumi.Input.asOptionalInput<String>(odbSubnet),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<CloudVmClusterProperties>(properties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOdbSubnet': ?backupOdbSubnet,
      'backupSubnetCidr': ?backupSubnetCidr,
      'cidr': ?cidr,
      'cloudVmClusterId': cloudVmClusterId,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'exadataInfrastructure': exadataInfrastructure,
      'labels': ?labels,
      'location': location,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory CloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterArgs(
      backupOdbSubnet: map['backupOdbSubnet'] == null ? null : map['backupOdbSubnet'] as String,
      backupSubnetCidr: map['backupSubnetCidr'] == null ? null : map['backupSubnetCidr'] as String,
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      exadataInfrastructure: map['exadataInfrastructure'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      odbNetwork: map['odbNetwork'] == null ? null : map['odbNetwork'] as String,
      odbSubnet: map['odbSubnet'] == null ? null : map['odbSubnet'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      properties: map['properties'] == null ? null : CloudVmClusterProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

