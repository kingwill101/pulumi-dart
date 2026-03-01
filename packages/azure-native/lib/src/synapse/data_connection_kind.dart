/// Kind of the endpoint for the data connection
enum DataConnectionKind {
  valueEventHub("EventHub"),
  valueEventGrid("EventGrid"),
  valueIotHub("IotHub");

  const DataConnectionKind(this.value);
  final String value;

  static DataConnectionKind fromValue(String value) {
    for (final item in DataConnectionKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataConnectionKind value: $value');
  }
}

