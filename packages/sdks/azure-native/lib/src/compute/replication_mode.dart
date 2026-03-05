/// Optional parameter which specifies the mode to be used for replication. This property is not updatable.
enum ReplicationMode {
  full("Full"),
  shallow("Shallow");

  const ReplicationMode(this.wireValue);
  final String wireValue;

  static ReplicationMode fromValue(String value) {
    for (final item in ReplicationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationMode value: $value');
  }
}

