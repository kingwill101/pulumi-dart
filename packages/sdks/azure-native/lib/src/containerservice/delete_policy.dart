/// Delete options of a namespace.
enum DeletePolicy {
  valueKeep("Keep"),
  valueDelete("Delete");

  const DeletePolicy(this.wireValue);
  final String wireValue;

  static DeletePolicy fromValue(String value) {
    for (final item in DeletePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeletePolicy value: $value');
  }
}

