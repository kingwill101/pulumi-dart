// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_autoscaling_metric_spec.dart';
import 'google_cloud_aiplatform_v1_machine_spec.dart';

/// A description of resources that are dedicated to a DeployedModel, and that need a higher degree of manual configuration.
class GoogleCloudAiplatformV1DedicatedResources {
  /// Immutable. The metric specifications that overrides a resource utilization metric (CPU utilization, accelerator's duty cycle, and so on) target value (default to 60 if not set). At most one entry is allowed per metric. If machine_spec.accelerator_count is above 0, the autoscaling will be based on both CPU utilization and accelerator's duty cycle metrics and scale up when either metrics exceeds its target value while scale down if both metrics are under their target value. The default target value is 60 for both metrics. If machine_spec.accelerator_count is 0, the autoscaling will be based on CPU utilization metric only with default target value 60 if not explicitly set. For example, in the case of Online Prediction, if you want to override target CPU utilization to 80, you should set autoscaling_metric_specs.metric_name to `aiplatform.googleapis.com/prediction/online/cpu/utilization` and autoscaling_metric_specs.target to `80`.
  final List<GoogleCloudAiplatformV1AutoscalingMetricSpec>?
      autoscalingMetricSpecs;

  /// Immutable. The specification of a single machine used by the prediction.
  final GoogleCloudAiplatformV1MachineSpec machineSpec;

  /// Immutable. The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If the requested value is too large, the deployment will error, but if deployment succeeds then the ability to scale the model to that many replicas is guaranteed (barring service outages). If traffic against the DeployedModel increases beyond what its replicas at maximum may handle, a portion of the traffic will be dropped. If this value is not provided, will use min_replica_count as the default value. The value of this field impacts the charge against Vertex CPU and GPU quotas. Specifically, you will be charged for (max_replica_count * number of cores in the selected machine type) and (max_replica_count * number of GPUs per replica in the selected machine type).
  final int? maxReplicaCount;

  /// Immutable. The minimum number of machine replicas this DeployedModel will be always deployed on. This value must be greater than or equal to 1. If traffic against the DeployedModel increases, it may dynamically be deployed onto more replicas, and as traffic decreases, some of these extra replicas may be freed.
  final int minReplicaCount;

  GoogleCloudAiplatformV1DedicatedResources({
    this.autoscalingMetricSpecs,
    required this.machineSpec,
    this.maxReplicaCount,
    required this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingMetricSpecsValue = autoscalingMetricSpecs;
    if (autoscalingMetricSpecsValue != null) {
      map['autoscalingMetricSpecs'] = Input.encodeList<
              GoogleCloudAiplatformV1AutoscalingMetricSpec,
              Map<String, dynamic>>(
          autoscalingMetricSpecsValue, (value) => value.toMap());
    }
    map['machineSpec'] = machineSpec.toMap();
    final maxReplicaCountValue = maxReplicaCount;
    if (maxReplicaCountValue != null) {
      map['maxReplicaCount'] = maxReplicaCountValue;
    }
    map['minReplicaCount'] = minReplicaCount;
    return map;
  }

  factory GoogleCloudAiplatformV1DedicatedResources.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DedicatedResources(
      autoscalingMetricSpecs: map['autoscalingMetricSpecs'] == null
          ? null
          : Input.decodeList<GoogleCloudAiplatformV1AutoscalingMetricSpec>(
              map['autoscalingMetricSpecs'],
              (value) => GoogleCloudAiplatformV1AutoscalingMetricSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
      machineSpec: GoogleCloudAiplatformV1MachineSpec.fromMap(
          (map['machineSpec'] as Map).cast<String, dynamic>()),
      maxReplicaCount:
          map['maxReplicaCount'] == null ? null : map['maxReplicaCount'] as int,
      minReplicaCount: map['minReplicaCount'] as int,
    );
  }
}
