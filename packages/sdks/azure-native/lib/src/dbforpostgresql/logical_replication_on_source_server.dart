import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether to setup logical replication on source server, if needed.
enum LogicalReplicationOnSourceServer implements pulumi.PulumiEnum<String> {
  true_("True"),
  false_("False");

  const LogicalReplicationOnSourceServer(this.wireValue);
  @override
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
