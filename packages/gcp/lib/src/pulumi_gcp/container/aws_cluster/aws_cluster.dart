import 'package:pulumi/pulumi.dart';
import '../aws_cluster_authorization/aws_cluster_authorization.dart';
import '../aws_cluster_binary_authorization/aws_cluster_binary_authorization.dart';
import '../aws_cluster_control_plane/aws_cluster_control_plane.dart';
import '../aws_cluster_fleet/aws_cluster_fleet.dart';
import '../aws_cluster_logging_config/aws_cluster_logging_config.dart';
import '../aws_cluster_networking/aws_cluster_networking.dart';
import '../aws_cluster_workload_identity_config/aws_cluster_workload_identity_config.dart';
import 'aws_cluster_args.dart';

/// An Anthos cluster running on AWS.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_aws_cluster
/// A basic example of a containeraws cluster
///
/// ### Basic_enum_aws_cluster
/// A basic example of a containeraws cluster with lowercase enums
///
/// ### Beta_basic_enum_aws_cluster
/// A basic example of a containeraws cluster with lowercase enums (beta)
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/awsClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/awsCluster:AwsCluster default projects/{{project}}/locations/{{location}}/awsClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsCluster:AwsCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:container/awsCluster:AwsCluster default {{location}}/{{name}}
/// ```
class AwsCluster extends CustomResource {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Configuration related to the cluster RBAC settings.
  late final Output<AwsClusterAuthorization> authorization;

  /// The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  late final Output<String> awsRegion;

  /// Configuration options for the Binary Authorization feature.
  late final Output<AwsClusterBinaryAuthorization> binaryAuthorization;

  /// Configuration related to the cluster control plane.
  late final Output<AwsClusterControlPlane> controlPlane;

  /// Output only. The time at which this cluster was created.
  late final Output<String> createTime;

  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  late final Output<String?> description;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// Output only. The endpoint of the cluster's API server.
  late final Output<String> endpoint;

  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Fleet configuration.
  late final Output<AwsClusterFleet> fleet;

  /// The location for the resource
  late final Output<String> location;

  /// Logging configuration.
  late final Output<AwsClusterLoggingConfig> loggingConfig;

  /// The name of this resource.
  late final Output<String> name;

  /// Cluster-wide networking configuration.
  late final Output<AwsClusterNetworking> networking;

  /// The project for the resource
  late final Output<String> project;

  /// Output only. If set, there are currently changes in flight to the cluster.
  late final Output<bool> reconciling;

  /// Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  late final Output<String> state;

  /// Output only. A globally unique identifier for the cluster.
  late final Output<String> uid;

  /// Output only. The time at which this cluster was last updated.
  late final Output<String> updateTime;

  /// Output only. Workload Identity settings.
  late final Output<List<AwsClusterWorkloadIdentityConfig>>
      workloadIdentityConfigs;

  AwsCluster(
    String name, {
    AwsClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:container/awsCluster:AwsCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.authorization =
        registerOutput<AwsClusterAuthorization>('authorization');
    this.awsRegion = registerOutput<String>('awsRegion');
    this.binaryAuthorization =
        registerOutput<AwsClusterBinaryAuthorization>('binaryAuthorization');
    this.controlPlane = registerOutput<AwsClusterControlPlane>('controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleet = registerOutput<AwsClusterFleet>('fleet');
    this.location = registerOutput<String>('location');
    this.loggingConfig =
        registerOutput<AwsClusterLoggingConfig>('loggingConfig');
    this.name = registerOutput<String>('name');
    this.networking = registerOutput<AwsClusterNetworking>('networking');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workloadIdentityConfigs =
        registerOutput<List<AwsClusterWorkloadIdentityConfig>>(
            'workloadIdentityConfigs');
  }
}
