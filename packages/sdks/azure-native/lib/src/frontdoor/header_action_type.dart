/// Which type of manipulation to apply to the header.
enum HeaderActionType {
  append("Append"),
  delete("Delete"),
  overwrite("Overwrite");

  const HeaderActionType(this.wireValue);
  final String wireValue;

  static HeaderActionType fromValue(String value) {
    for (final item in HeaderActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderActionType value: $value');
  }
}
