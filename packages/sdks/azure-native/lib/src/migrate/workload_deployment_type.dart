import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the instance type.
enum WorkloadDeploymentType implements pulumi.PulumiEnum<String> {
  valueIISAKSWorkloadDeployment("IISAKSWorkloadDeployment"),
  valueApacheTomcatAKSWorkloadDeployment("ApacheTomcatAKSWorkloadDeployment");

  const WorkloadDeploymentType(this.wireValue);
  @override
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
