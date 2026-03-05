/// Gets or sets the deployment target platform.
enum WorkloadDeploymentTarget {
  valueAzureKubernetesService("AzureKubernetesService"),
  valueAzureAppServiceContainer("AzureAppServiceContainer"),
  valueAzureAppServiceNative("AzureAppServiceNative");

  const WorkloadDeploymentTarget(this.wireValue);
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

