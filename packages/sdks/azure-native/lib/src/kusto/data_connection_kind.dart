/// Kind of the endpoint for the data connection
enum DataConnectionKind {
  valueEventHub("EventHub"),
  valueEventGrid("EventGrid"),
  valueIotHub("IotHub"),
  valueCosmosDb("CosmosDb");

  const DataConnectionKind(this.wireValue);
  final String wireValue;

  static DataConnectionKind fromValue(String value) {
    for (final item in DataConnectionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataConnectionKind value: $value');
  }
}
