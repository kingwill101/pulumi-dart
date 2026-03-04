/// [Required] The type of the deployment
enum BatchDeploymentConfigurationType {
  valueModel("Model"),
  valuePipelineComponent("PipelineComponent");

  const BatchDeploymentConfigurationType(this.wireValue);
  final String wireValue;

  static BatchDeploymentConfigurationType fromValue(String value) {
    for (final item in BatchDeploymentConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BatchDeploymentConfigurationType value: $value',
    );
  }
}
