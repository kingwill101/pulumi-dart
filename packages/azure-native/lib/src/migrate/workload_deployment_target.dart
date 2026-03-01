/// Gets or sets the deployment target platform.
enum WorkloadDeploymentTarget {
  valueAzureKubernetesService("AzureKubernetesService"),
  valueAzureAppServiceContainer("AzureAppServiceContainer"),
  valueAzureAppServiceNative("AzureAppServiceNative");

  const WorkloadDeploymentTarget(this.value);
  final String value;

  static WorkloadDeploymentTarget fromValue(String value) {
    for (final item in WorkloadDeploymentTarget.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadDeploymentTarget value: $value');
  }
}

