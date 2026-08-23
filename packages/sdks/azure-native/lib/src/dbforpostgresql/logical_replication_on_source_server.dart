/// Indicates whether to setup logical replication on source server, if needed.
enum LogicalReplicationOnSourceServer {
  true_("True"),
  false_("False");

  const LogicalReplicationOnSourceServer(this.wireValue);
  final String wireValue;

  static LogicalReplicationOnSourceServer fromValue(String value) {
    for (final item in LogicalReplicationOnSourceServer.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogicalReplicationOnSourceServer value: $value');
  }
}
