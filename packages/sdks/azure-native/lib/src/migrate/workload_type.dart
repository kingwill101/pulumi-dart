/// Gets or sets the instance type.
enum WorkloadType {
  valueIISWorkload("IISWorkload"),
  valueApacheTomcatWorkload("ApacheTomcatWorkload");

  const WorkloadType(this.value);
  final String value;

  static WorkloadType fromValue(String value) {
    for (final item in WorkloadType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadType value: $value');
  }
}

