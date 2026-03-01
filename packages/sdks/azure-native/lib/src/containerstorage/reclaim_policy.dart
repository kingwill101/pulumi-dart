/// ReclaimPolicy defines what happens to the backend storage when StoragePool is deleted
enum ReclaimPolicy {
  delete("Delete"),
  retain("Retain");

  const ReclaimPolicy(this.value);
  final String value;

  static ReclaimPolicy fromValue(String value) {
    for (final item in ReclaimPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReclaimPolicy value: $value');
  }
}

