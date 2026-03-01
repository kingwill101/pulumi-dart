/// Enumerates the ways that a service can be partitioned.
enum PartitionScheme {
  singleton("Singleton"),
  uniformInt64Range("UniformInt64Range"),
  named("Named");

  const PartitionScheme(this.value);
  final String value;

  static PartitionScheme fromValue(String value) {
    for (final item in PartitionScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartitionScheme value: $value');
  }
}

