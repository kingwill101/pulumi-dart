import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of operation to apply on the read replica. This property is write only. Standalone means that the read replica will be promoted to a standalone server, and will become a completely independent entity from the replication set. Switchover means that the read replica will roles with the primary server.
enum ReadReplicaPromoteMode implements pulumi.PulumiEnum<String> {
  standalone("Standalone"),
  switchover("Switchover");

  const ReadReplicaPromoteMode(this.wireValue);
  @override
  final String wireValue;

  static ReadReplicaPromoteMode fromValue(String value) {
    for (final item in ReadReplicaPromoteMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadReplicaPromoteMode value: $value');
  }
}
