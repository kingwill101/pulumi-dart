/// The replication strategy.
enum ArtifactReplicationStrategy {
  valueUnknown("Unknown"),
  valueSingleReplication("SingleReplication");

  const ArtifactReplicationStrategy(this.value);
  final String value;

  static ArtifactReplicationStrategy fromValue(String value) {
    for (final item in ArtifactReplicationStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactReplicationStrategy value: $value');
  }
}

