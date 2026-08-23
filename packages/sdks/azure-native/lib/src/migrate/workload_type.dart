/// Gets or sets the instance type.
enum WorkloadType {
  valueIISWorkload("IISWorkload"),
  valueApacheTomcatWorkload("ApacheTomcatWorkload");

  const WorkloadType(this.wireValue);
  final String wireValue;

  static WorkloadType fromValue(String value) {
    for (final item in WorkloadType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadType value: $value');
  }
}
