/// The operation for the patch on the resource.
enum Operation {
  valueAddBegin("AddBegin"),
  valueAddComplete("AddComplete"),
  valueDeleteBegin("DeleteBegin"),
  valueDeleteComplete("DeleteComplete"),
  valueActive("Active");

  const Operation(this.wireValue);
  final String wireValue;

  static Operation fromValue(String value) {
    for (final item in Operation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operation value: $value');
  }
}

