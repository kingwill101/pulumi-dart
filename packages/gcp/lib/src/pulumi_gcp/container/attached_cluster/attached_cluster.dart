import 'package:pulumi/pulumi.dart';
import '../attached_cluster_authorization/attached_cluster_authorization.dart';
import '../attached_cluster_binary_authorization/attached_cluster_binary_authorization.dart';
import '../attached_cluster_error/attached_cluster_error.dart';
import '../attached_cluster_fleet/attached_cluster_fleet.dart';
import '../attached_cluster_logging_config/attached_cluster_logging_config.dart';
import '../attached_cluster_monitoring_config/attached_cluster_monitoring_config.dart';
import '../attached_cluster_oidc_config/attached_cluster_oidc_config.dart';
import '../attached_cluster_proxy_config/attached_cluster_proxy_config.dart';
import '../attached_cluster_security_posture_config/attached_cluster_security_posture_config.dart';
import '../attached_cluster_workload_identity_config/attached_cluster_workload_identity_config.dart';
import 'attached_cluster_args.dart';

/// An Anthos cluster running on customer owned infrastructure.
///
///
/// To get more information about Cluster, see:
///
/// * [API documentation](https://cloud.google.com/anthos/clusters/docs/multi-cloud/reference/rest)
/// * How-to Guides
/// * [API reference](https://cloud.google.com/anthos/clusters/docs/multi-cloud/reference/rest/v1/projects.locations.attachedClusters)
/// * [Multicloud overview](https://cloud.google.com/anthos/clusters/docs/multi-cloud)
///
/// ## Example Usage
///
/// ### Container Attached Cluster Basic
///
///
///
/// ### Container Attached Cluster Full
///
///
///
/// ### Container Attached Cluster Ignore Errors
///
///
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/attachedClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/attachedCluster:AttachedCluster default projects/{{project}}/locations/{{location}}/attachedClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/attachedCluster:AttachedCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/attachedCluster:AttachedCluster default {{location}}/{{name}}
/// ```
class AttachedCluster extends CustomResource {
  /// Optional. Annotations on the cluster. This field has the same
  /// restrictions as Kubernetes annotations. The total size of all keys and
  /// values combined is limited to 256k. Key can have 2 segments: prefix (optional)
  /// and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Configuration related to the cluster RBAC settings.
  /// Structure is documented below.
  late final Output<AttachedClusterAuthorization?> authorization;

  /// Binary Authorization configuration.
  /// Structure is documented below.
  late final Output<AttachedClusterBinaryAuthorization> binaryAuthorization;

  /// Output only. The region where this cluster runs.
  /// For EKS clusters, this is an AWS region. For AKS clusters,
  /// this is an Azure region.
  late final Output<String> clusterRegion;

  /// Output only. The time at which this cluster was created.
  late final Output<String> createTime;

  /// Policy to determine what flags to send on delete. Possible values: DELETE, DELETE_IGNORE_ERRORS
  late final Output<String?> deletionPolicy;

  /// A human readable description of this attached cluster. Cannot be longer
  /// than 255 UTF-8 encoded bytes.
  late final Output<String?> description;

  /// The Kubernetes distribution of the underlying attached cluster. Supported values:
  /// "eks", "aks", "generic". The generic distribution provides the ability to register
  /// or migrate any CNCF conformant cluster.
  late final Output<String> distribution;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// A set of errors found in the cluster.
  /// Structure is documented below.
  late final Output<List<AttachedClusterError>> errors;

  /// Fleet configuration.
  /// Structure is documented below.
  late final Output<AttachedClusterFleet> fleet;

  /// The Kubernetes version of the cluster.
  late final Output<String> kubernetesVersion;

  /// The location for the resource
  late final Output<String> location;

  /// Logging configuration.
  /// Structure is documented below.
  late final Output<AttachedClusterLoggingConfig?> loggingConfig;

  /// Monitoring configuration.
  /// Structure is documented below.
  late final Output<AttachedClusterMonitoringConfig> monitoringConfig;

  /// The name of this resource.
  late final Output<String> name;

  /// OIDC discovery information of the target cluster.
  /// Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
  /// API server. This fields indicates how GCP services
  /// validate KSA tokens in order to allow system workloads (such as GKE Connect
  /// and telemetry agents) to authenticate back to GCP.
  /// Both clusters with public and private issuer URLs are supported.
  /// Clusters with public issuers only need to specify the `issuer_url` field
  /// while clusters with private issuers need to provide both
  /// `issuer_url` and `jwks`.
  /// Structure is documented below.
  late final Output<AttachedClusterOidcConfig> oidcConfig;

  /// The platform version for the cluster (e.g. `1.23.0-gke.1`).
  late final Output<String> platformVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Support for proxy configuration.
  /// Structure is documented below.
  late final Output<AttachedClusterProxyConfig?> proxyConfig;

  /// If set, there are currently changes in flight to the cluster.
  late final Output<bool> reconciling;

  /// (Optional, Deprecated)
  /// Enable/Disable Security Posture API features for the cluster.
  /// Structure is documented below.
  ///
  /// > **Warning:** `security_posture_config` is deprecated and will be removed in a future major release.
  late final Output<AttachedClusterSecurityPostureConfig> securityPostureConfig;

  /// The current state of the cluster. Possible values:
  /// STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR,
  /// DEGRADED
  late final Output<String> state;

  /// A globally unique identifier for the cluster.
  late final Output<String> uid;

  /// The time at which this cluster was last updated.
  late final Output<String> updateTime;

  /// Workload Identity settings.
  /// Structure is documented below.
  late final Output<List<AttachedClusterWorkloadIdentityConfig>>
      workloadIdentityConfigs;

  AttachedCluster(
    String name, {
    AttachedClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:container/attachedCluster:AttachedCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.authorization =
        registerOutput<AttachedClusterAuthorization?>('authorization');
    this.binaryAuthorization =
        registerOutput<AttachedClusterBinaryAuthorization>(
            'binaryAuthorization');
    this.clusterRegion = registerOutput<String>('clusterRegion');
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.description = registerOutput<String?>('description');
    this.distribution = registerOutput<String>('distribution');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.errors = registerOutput<List<AttachedClusterError>>('errors');
    this.fleet = registerOutput<AttachedClusterFleet>('fleet');
    this.kubernetesVersion = registerOutput<String>('kubernetesVersion');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<AttachedClusterLoggingConfig?>('loggingConfig');
    this.monitoringConfig =
        registerOutput<AttachedClusterMonitoringConfig>('monitoringConfig');
    this.name = registerOutput<String>('name');
    this.oidcConfig = registerOutput<AttachedClusterOidcConfig>('oidcConfig');
    this.platformVersion = registerOutput<String>('platformVersion');
    this.project = registerOutput<String>('project');
    this.proxyConfig =
        registerOutput<AttachedClusterProxyConfig?>('proxyConfig');
    this.reconciling = registerOutput<bool>('reconciling');
    this.securityPostureConfig =
        registerOutput<AttachedClusterSecurityPostureConfig>(
            'securityPostureConfig');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workloadIdentityConfigs =
        registerOutput<List<AttachedClusterWorkloadIdentityConfig>>(
            'workloadIdentityConfigs');
  }
}
