import 'package:pulumi/pulumi.dart' as pulumi;

/// The replication strategy.
enum ArtifactReplicationStrategy implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueSingleReplication("SingleReplication");

  const ArtifactReplicationStrategy(this.wireValue);
  @override
  final String wireValue;

  static ArtifactReplicationStrategy fromValue(String value) {
    for (final item in ArtifactReplicationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactReplicationStrategy value: $value');
  }
}
