import 'package:pulumi/pulumi.dart' as pulumi;

/// Role of the server in a replication set.
enum ReplicationRole implements pulumi.PulumiEnum<String> {
  none("None"),
  primary("Primary"),
  asyncReplica("AsyncReplica"),
  geoAsyncReplica("GeoAsyncReplica");

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
