/// The operation for the patch on the resource.
enum Operation {
  valueAddBegin("AddBegin"),
  valueAddComplete("AddComplete"),
  valueDeleteBegin("DeleteBegin"),
  valueDeleteComplete("DeleteComplete"),
  valueActive("Active");

  const Operation(this.value);
  final String value;

  static Operation fromValue(String value) {
    for (final item in Operation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operation value: $value');
  }
}

