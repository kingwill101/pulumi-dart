import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the deployment target platform.
enum WorkloadDeploymentTarget implements pulumi.PulumiEnum<String> {
  valueAzureKubernetesService("AzureKubernetesService"),
  valueAzureAppServiceContainer("AzureAppServiceContainer"),
  valueAzureAppServiceNative("AzureAppServiceNative");

  const WorkloadDeploymentTarget(this.wireValue);
  @override
  final String wireValue;

  static WorkloadDeploymentTarget fromValue(String value) {
    for (final item in WorkloadDeploymentTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadDeploymentTarget value: $value');
  }
}
