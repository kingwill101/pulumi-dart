import 'package:pulumi/pulumi.dart' as pulumi;

/// The replication role.
enum ReplicationRole implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSource("Source"),
  valueReplica("Replica");

  const ReplicationRole(this.wireValue);
  @override
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
