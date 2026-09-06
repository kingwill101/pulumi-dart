import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The type of the deployment
enum BatchDeploymentConfigurationType implements pulumi.PulumiEnum<String> {
  model("Model"),
  pipelineComponent("PipelineComponent");

  const BatchDeploymentConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static BatchDeploymentConfigurationType fromValue(String value) {
    for (final item in BatchDeploymentConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchDeploymentConfigurationType value: $value');
  }
}
