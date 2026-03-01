/// Which type of manipulation to apply to the header.
enum HeaderActionType {
  valueAppend("Append"),
  valueDelete("Delete"),
  valueOverwrite("Overwrite");

  const HeaderActionType(this.value);
  final String value;

  static HeaderActionType fromValue(String value) {
    for (final item in HeaderActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderActionType value: $value');
  }
}

