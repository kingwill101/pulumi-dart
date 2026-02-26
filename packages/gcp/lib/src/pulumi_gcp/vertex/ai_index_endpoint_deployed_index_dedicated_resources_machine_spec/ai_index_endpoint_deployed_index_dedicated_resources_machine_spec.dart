// ignore_for_file: unused_element, unnecessary_cast

class AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec {
  /// The type of the machine.
  /// See the [list of machine types supported for prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
  /// See the [list of machine types supported for custom training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
  /// For [DeployedModel](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints#DeployedModel) this field is optional, and the default value is n1-standard-2. For [BatchPredictionJob](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.batchPredictionJobs#BatchPredictionJob) or as part of [WorkerPoolSpec](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/CustomJobSpec#WorkerPoolSpec) this field is required.
  final String? machineType;

  AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec({
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    return map;
  }

  factory AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec.fromMap(
      Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexDedicatedResourcesMachineSpec(
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}
