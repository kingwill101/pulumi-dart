/// Status of the schema
enum SchemaStatus {
  valueNew("New"),
  valueApproved("Approved");

  const SchemaStatus(this.value);
  final String value;

  static SchemaStatus fromValue(String value) {
    for (final item in SchemaStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaStatus value: $value');
  }
}

