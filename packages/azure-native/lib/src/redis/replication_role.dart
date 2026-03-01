/// Role of the linked server.
enum ReplicationRole {
  valuePrimary("Primary"),
  valueSecondary("Secondary");

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

