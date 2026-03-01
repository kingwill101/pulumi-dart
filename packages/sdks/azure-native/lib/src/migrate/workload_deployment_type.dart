/// Gets or sets the instance type.
enum WorkloadDeploymentType {
  valueIISAKSWorkloadDeployment("IISAKSWorkloadDeployment"),
  valueApacheTomcatAKSWorkloadDeployment("ApacheTomcatAKSWorkloadDeployment");

  const WorkloadDeploymentType(this.value);
  final String value;

  static WorkloadDeploymentType fromValue(String value) {
    for (final item in WorkloadDeploymentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadDeploymentType value: $value');
  }
}

