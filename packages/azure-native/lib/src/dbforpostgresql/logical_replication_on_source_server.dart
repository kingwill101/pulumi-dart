/// Indicates whether to setup logical replication on source server, if needed.
enum LogicalReplicationOnSourceServer {
  true_("True"),
  false_("False");

  const LogicalReplicationOnSourceServer(this.value);
  final String value;

  static LogicalReplicationOnSourceServer fromValue(String value) {
    for (final item in LogicalReplicationOnSourceServer.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogicalReplicationOnSourceServer value: $value');
  }
}

