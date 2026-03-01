/// Role of the server in a replication set.
enum ReplicationRole {
  none("None"),
  primary("Primary"),
  asyncReplica("AsyncReplica"),
  geoAsyncReplica("GeoAsyncReplica");

  const ReplicationRole(this.value);
  final String value;

  static ReplicationRole fromValue(String value) {
    for (final item in ReplicationRole.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationRole value: $value');
  }
}

