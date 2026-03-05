/// The replication role.
enum ReplicationRole {
  valueNone("None"),
  valueSource("Source"),
  valueReplica("Replica");

  const ReplicationRole(this.wireValue);
  final String wireValue;

  static ReplicationRole fromValue(String value) {
    for (final item in ReplicationRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationRole value: $value');
  }
}

