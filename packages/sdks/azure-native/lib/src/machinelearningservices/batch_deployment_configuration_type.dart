/// [Required] The type of the deployment
enum BatchDeploymentConfigurationType {
  valueModel("Model"),
  valuePipelineComponent("PipelineComponent");

  const BatchDeploymentConfigurationType(this.value);
  final String value;

  static BatchDeploymentConfigurationType fromValue(String value) {
    for (final item in BatchDeploymentConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchDeploymentConfigurationType value: $value');
  }
}

