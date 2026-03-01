/// Delete options of a namespace.
enum DeletePolicy {
  valueKeep("Keep"),
  valueDelete("Delete");

  const DeletePolicy(this.value);
  final String value;

  static DeletePolicy fromValue(String value) {
    for (final item in DeletePolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeletePolicy value: $value');
  }
}

