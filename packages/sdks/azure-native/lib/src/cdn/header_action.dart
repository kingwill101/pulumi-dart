/// Action to perform
enum HeaderAction {
  append("Append"),
  overwrite("Overwrite"),
  delete("Delete");

  const HeaderAction(this.wireValue);
  final String wireValue;

  static HeaderAction fromValue(String value) {
    for (final item in HeaderAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderAction value: $value');
  }
}

