/// Storage workload type.
enum StorageWorkloadType {
  gENERAL("GENERAL"),
  oLTP("OLTP"),
  dW("DW");

  const StorageWorkloadType(this.value);
  final String value;

  static StorageWorkloadType fromValue(String value) {
    for (final item in StorageWorkloadType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageWorkloadType value: $value');
  }
}

