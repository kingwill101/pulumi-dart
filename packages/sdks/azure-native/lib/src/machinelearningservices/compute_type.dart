/// The type of compute
enum ComputeType {
  valueAKS("AKS"),
  valueKubernetes("Kubernetes"),
  valueAmlCompute("AmlCompute"),
  valueComputeInstance("ComputeInstance"),
  valueDataFactory("DataFactory"),
  valueVirtualMachine("VirtualMachine"),
  valueHDInsight("HDInsight"),
  valueDatabricks("Databricks"),
  valueDataLakeAnalytics("DataLakeAnalytics"),
  valueSynapseSpark("SynapseSpark");

  const ComputeType(this.value);
  final String value;

  static ComputeType fromValue(String value) {
    for (final item in ComputeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeType value: $value');
  }
}

