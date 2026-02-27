// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'anthos_cluster.dart';
import 'cloud_run_location.dart';
import 'execution_config.dart';
import 'gke_cluster.dart';
import 'multi_target.dart';

/// The set of arguments for Target.
class TargetArgs {
  /// Optional. User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Input<Map<String, String>>? annotations;

  /// Optional. Information specifying an Anthos Cluster.
  final Input<AnthosCluster>? anthosCluster;

  /// Optional. The deploy parameters to use for this target.
  final Input<Map<String, String>>? deployParameters;

  /// Optional. Description of the `Target`. Max length is 255 characters.
  final Input<String>? description;

  /// Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.
  final Input<List<ExecutionConfig>>? executionConfigs;

  /// Optional. Information specifying a GKE Cluster.
  final Input<GkeCluster>? gke;

  /// Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Information specifying a multiTarget.
  final Input<MultiTarget>? multiTarget;

  /// Optional. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. Whether or not the `Target` requires approval.
  final Input<bool>? requireApproval;

  /// Optional. Information specifying a Cloud Run deployment target.
  final Input<CloudRunLocation>? run;

  /// Required. ID of the `Target`.
  final Input<String> targetId;

  TargetArgs({
    this.annotations,
    this.anthosCluster,
    this.deployParameters,
    this.description,
    this.etag,
    this.executionConfigs,
    this.gke,
    this.labels,
    this.location,
    this.multiTarget,
    this.name,
    this.project,
    this.requestId,
    this.requireApproval,
    this.run,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final anthosClusterValue = anthosCluster;
    if (anthosClusterValue != null) {
      map['anthosCluster'] =
          Input.mapOptionalInputValue<AnthosCluster, Map<String, dynamic>>(
              anthosClusterValue, (value) => value.toMap());
    }
    final deployParametersValue = deployParameters;
    if (deployParametersValue != null) {
      map['deployParameters'] = deployParametersValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final executionConfigsValue = executionConfigs;
    if (executionConfigsValue != null) {
      map['executionConfigs'] = Input.mapOptionalInputValue<
              List<ExecutionConfig>, List<Map<String, dynamic>>>(
          executionConfigsValue,
          (value) => Input.encodeList<ExecutionConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final gkeValue = gke;
    if (gkeValue != null) {
      map['gke'] =
          Input.mapOptionalInputValue<GkeCluster, Map<String, dynamic>>(
              gkeValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final multiTargetValue = multiTarget;
    if (multiTargetValue != null) {
      map['multiTarget'] =
          Input.mapOptionalInputValue<MultiTarget, Map<String, dynamic>>(
              multiTargetValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final requireApprovalValue = requireApproval;
    if (requireApprovalValue != null) {
      map['requireApproval'] = requireApprovalValue;
    }
    final runValue = run;
    if (runValue != null) {
      map['run'] =
          Input.mapOptionalInputValue<CloudRunLocation, Map<String, dynamic>>(
              runValue, (value) => value.toMap());
    }
    map['targetId'] = targetId;
    return map;
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      anthosCluster: Input.asOptionalInput<AnthosCluster>(map['anthosCluster']),
      deployParameters:
          Input.asOptionalInput<Map<String, String>>(map['deployParameters']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      executionConfigs:
          Input.asOptionalInput<List<ExecutionConfig>>(map['executionConfigs']),
      gke: Input.asOptionalInput<GkeCluster>(map['gke']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      multiTarget: Input.asOptionalInput<MultiTarget>(map['multiTarget']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      requireApproval: Input.asOptionalInput<bool>(map['requireApproval']),
      run: Input.asOptionalInput<CloudRunLocation>(map['run']),
      targetId: Input.asInput<String>(map['targetId']),
    );
  }
}
