import 'package:pulumi/pulumi.dart';
import 'anthos_cluster_response.dart';
import 'cloud_run_location_response.dart';
import 'execution_config_response.dart';
import 'gke_cluster_response.dart';
import 'multi_target_response.dart';
import 'target_args.dart';

/// Creates a new Target in a given project and location.
class Target2 extends CustomResource {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  late final Output<Map<String, String>> annotations;

  /// Optional. Information specifying an Anthos Cluster.
  late final Output<AnthosClusterResponse> anthosCluster;

  /// Time at which the `Target` was created.
  late final Output<String> createTime;

  /// Optional. The deploy parameters to use for this target.
  late final Output<Map<String, String>> deployParameters;

  /// Optional. Description of the `Target`. Max length is 255 characters.
  late final Output<String> description;

  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  late final Output<List<ExecutionConfigResponse>> executionConfigs;

  /// Optional. Information specifying a GKE Cluster.
  late final Output<GkeClusterResponse> gke;

  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Information specifying a multiTarget.
  late final Output<MultiTargetResponse> multiTarget;

  /// Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Optional. Whether or not the `Target` requires approval.
  late final Output<bool> requireApproval;

  /// Optional. Information specifying a Cloud Run deployment target.
  late final Output<CloudRunLocationResponse> run;

  /// Required. ID of the `Target`.
  late final Output<String> targetId;

  /// Unique identifier of the `Target`.
  late final Output<String> uid;

  /// Most recent time at which the `Target` was updated.
  late final Output<String> updateTime;

  Target2(
    String name, {
    TargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:clouddeploy/v1:Target',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.anthosCluster = Output.createUnknown<AnthosClusterResponse>();
    this.createTime = Output.createUnknown<String>();
    this.deployParameters = Output.createUnknown<Map<String, String>>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.executionConfigs =
        Output.createUnknown<List<ExecutionConfigResponse>>();
    this.gke = Output.createUnknown<GkeClusterResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.multiTarget = Output.createUnknown<MultiTargetResponse>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.requireApproval = Output.createUnknown<bool>();
    this.run = Output.createUnknown<CloudRunLocationResponse>();
    this.targetId = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
