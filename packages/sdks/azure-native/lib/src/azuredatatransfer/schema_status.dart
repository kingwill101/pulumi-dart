/// Status of the schema
enum SchemaStatus {
  valueNew("New"),
  valueApproved("Approved");

  const SchemaStatus(this.wireValue);
  final String wireValue;

  static SchemaStatus fromValue(String value) {
    for (final item in SchemaStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaStatus value: $value');
  }
}

