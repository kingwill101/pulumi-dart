import 'package:pulumi/pulumi.dart';
import '../cloud_vm_cluster_properties/cloud_vm_cluster_properties.dart';
import 'cloud_vm_cluster_args.dart';

/// A CloudVmCluster resource.
///
///
/// To get more information about CloudVmCluster, see:
///
/// * [API documentation](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters)
/// * How-to Guides
/// * [Create VM clusters](https://cloud.google.com/oracle/database/docs/create-clusters)
///
/// ## Example Usage
///
/// ### Oracledatabase Cloud Vmcluster Basic
///
///
///
/// ### Oracledatabase Cloud Vmcluster Odbnetwork
///
///
///
/// ### Oracledatabase Cloud Vmcluster Full
///
///
///
///
/// ## Import
///
/// CloudVmCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cloudVmClusters/{{cloud_vm_cluster_id}}`
///
/// * `{{project}}/{{location}}/{{cloud_vm_cluster_id}}`
///
/// * `{{location}}/{{cloud_vm_cluster_id}}`
///
/// When using the `pulumi import` command, CloudVmCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudVmCluster:CloudVmCluster default projects/{{project}}/locations/{{location}}/cloudVmClusters/{{cloud_vm_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudVmCluster:CloudVmCluster default {{project}}/{{location}}/{{cloud_vm_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudVmCluster:CloudVmCluster default {{location}}/{{cloud_vm_cluster_id}}
/// ```
class CloudVmCluster extends CustomResource {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final Output<String> backupOdbSubnet;

  /// CIDR range of the backup subnet.
  late final Output<String?> backupSubnetCidr;

  /// Network settings. CIDR to use for cluster IP allocation.
  late final Output<String?> cidr;

  /// The ID of the VM Cluster to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final Output<String> cloudVmClusterId;

  /// The date and time that the VM cluster was created.
  late final Output<String> createTime;
  late final Output<bool?> deletionProtection;

  /// User friendly name for this resource.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  late final Output<String> exadataInfrastructure;

  /// GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// of Exadata infrastructure.
  late final Output<String> gcpOracleZone;

  /// Labels or tags associated with the VM Cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  late final Output<String> location;

  /// Identifier. The name of the VM Cluster resource with the format:
  /// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
  late final Output<String> name;

  /// The name of the VPC network.
  /// Format: projects/{project}/global/networks/{network}
  late final Output<String?> network;

  /// The name of the OdbNetwork associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  late final Output<String> odbNetwork;

  /// The name of the OdbSubnet associated with the VM Cluster for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final Output<String> odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Various properties and settings associated with Exadata VM cluster.
  /// Structure is documented below.
  late final Output<CloudVmClusterProperties?> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  CloudVmCluster(
    String name, {
    CloudVmClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/cloudVmCluster:CloudVmCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupOdbSubnet = registerOutput<String>('backupOdbSubnet');
    this.backupSubnetCidr = registerOutput<String?>('backupSubnetCidr');
    this.cidr = registerOutput<String?>('cidr');
    this.cloudVmClusterId = registerOutput<String>('cloudVmClusterId');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.exadataInfrastructure =
        registerOutput<String>('exadataInfrastructure');
    this.gcpOracleZone = registerOutput<String>('gcpOracleZone');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.odbNetwork = registerOutput<String>('odbNetwork');
    this.odbSubnet = registerOutput<String>('odbSubnet');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<CloudVmClusterProperties?>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
