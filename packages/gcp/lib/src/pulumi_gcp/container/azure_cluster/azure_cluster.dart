import 'package:pulumi/pulumi.dart' as pulumi;
import '../azure_cluster_authorization/azure_cluster_authorization.dart';
import '../azure_cluster_azure_services_authentication/azure_cluster_azure_services_authentication.dart';
import '../azure_cluster_control_plane/azure_cluster_control_plane.dart';
import '../azure_cluster_fleet/azure_cluster_fleet.dart';
import '../azure_cluster_logging_config/azure_cluster_logging_config.dart';
import '../azure_cluster_networking/azure_cluster_networking.dart';
import '../azure_cluster_workload_identity_config/azure_cluster_workload_identity_config.dart';
import 'azure_cluster_args.dart';

/// An Anthos cluster running on Azure.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_azure_cluster
/// A basic example of a containerazure azure cluster
///
/// ### Beta_basic_enum_azure_cluster
/// A basic example of a containerazure azure cluster with lowercase enums (beta)
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/azureClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/azureCluster:AzureCluster default projects/{{project}}/locations/{{location}}/azureClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureCluster:AzureCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/azureCluster:AzureCluster default {{location}}/{{name}}
/// ```
class AzureCluster extends pulumi.CustomResource {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Configuration related to the cluster RBAC settings.
  late final pulumi.Output<AzureClusterAuthorization> authorization;

  /// The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  late final pulumi.Output<String> azureRegion;

  /// Azure authentication configuration for management of Azure resources
  late final pulumi.Output<AzureClusterAzureServicesAuthentication?>
      azureServicesAuthentication;

  /// Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/<project-number>/locations/<region>/azureClients/<client-id>`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  late final pulumi.Output<String?> client;

  /// Configuration related to the cluster control plane.
  late final pulumi.Output<AzureClusterControlPlane> controlPlane;

  /// Output only. The time at which this cluster was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// Output only. The endpoint of the cluster's API server.
  late final pulumi.Output<String> endpoint;

  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Fleet configuration.
  late final pulumi.Output<AzureClusterFleet> fleet;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Logging configuration.
  late final pulumi.Output<AzureClusterLoggingConfig> loggingConfig;

  /// The name of this resource.
  late final pulumi.Output<String> name;

  /// Cluster-wide networking configuration.
  late final pulumi.Output<AzureClusterNetworking> networking;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// Output only. If set, there are currently changes in flight to the cluster.
  late final pulumi.Output<bool> reconciling;

  /// The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  late final pulumi.Output<String> resourceGroupId;

  /// Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final pulumi.Output<String> state;

  /// Output only. A globally unique identifier for the cluster.
  late final pulumi.Output<String> uid;

  /// Output only. The time at which this cluster was last updated.
  late final pulumi.Output<String> updateTime;

  /// Output only. Workload Identity settings.
  late final pulumi.Output<List<AzureClusterWorkloadIdentityConfig>>
      workloadIdentityConfigs;

  AzureCluster(
    String name, {
    AzureClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/azureCluster:AzureCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.authorization =
        registerOutput<AzureClusterAuthorization>('authorization');
    this.azureRegion = registerOutput<String>('azureRegion');
    this.azureServicesAuthentication =
        registerOutput<AzureClusterAzureServicesAuthentication?>(
            'azureServicesAuthentication');
    this.client = registerOutput<String?>('client');
    this.controlPlane =
        registerOutput<AzureClusterControlPlane>('controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleet = registerOutput<AzureClusterFleet>('fleet');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<AzureClusterLoggingConfig>('loggingConfig');
    this.name = registerOutput<String>('name');
    this.networking = registerOutput<AzureClusterNetworking>('networking');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workloadIdentityConfigs =
        registerOutput<List<AzureClusterWorkloadIdentityConfig>>(
            'workloadIdentityConfigs');
  }
}
