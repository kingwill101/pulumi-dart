import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of compute
enum ComputeType implements pulumi.PulumiEnum<String> {
  aKS("AKS"),
  kubernetes("Kubernetes"),
  amlCompute("AmlCompute"),
  computeInstance("ComputeInstance"),
  dataFactory("DataFactory"),
  virtualMachine("VirtualMachine"),
  hDInsight("HDInsight"),
  databricks("Databricks"),
  dataLakeAnalytics("DataLakeAnalytics"),
  synapseSpark("SynapseSpark");

  const ComputeType(this.wireValue);
  @override
  final String wireValue;

  static ComputeType fromValue(String value) {
    for (final item in ComputeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeType value: $value');
  }
}
