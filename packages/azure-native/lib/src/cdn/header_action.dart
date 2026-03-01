/// Action to perform
enum HeaderAction {
  append("Append"),
  overwrite("Overwrite"),
  delete("Delete");

  const HeaderAction(this.value);
  final String value;

  static HeaderAction fromValue(String value) {
    for (final item in HeaderAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderAction value: $value');
  }
}

