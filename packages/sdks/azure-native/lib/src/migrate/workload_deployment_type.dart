/// Gets or sets the instance type.
enum WorkloadDeploymentType {
  valueIISAKSWorkloadDeployment("IISAKSWorkloadDeployment"),
  valueApacheTomcatAKSWorkloadDeployment("ApacheTomcatAKSWorkloadDeployment");

  const WorkloadDeploymentType(this.wireValue);
  final String wireValue;

  static WorkloadDeploymentType fromValue(String value) {
    for (final item in WorkloadDeploymentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadDeploymentType value: $value');
  }
}

