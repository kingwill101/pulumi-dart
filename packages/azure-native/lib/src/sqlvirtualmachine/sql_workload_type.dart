/// SQL Server workload type.
enum SqlWorkloadType {
  gENERAL("GENERAL"),
  oLTP("OLTP"),
  dW("DW");

  const SqlWorkloadType(this.value);
  final String value;

  static SqlWorkloadType fromValue(String value) {
    for (final item in SqlWorkloadType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlWorkloadType value: $value');
  }
}

