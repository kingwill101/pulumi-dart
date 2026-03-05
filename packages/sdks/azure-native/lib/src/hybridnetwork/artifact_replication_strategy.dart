/// The replication strategy.
enum ArtifactReplicationStrategy {
  valueUnknown("Unknown"),
  valueSingleReplication("SingleReplication");

  const ArtifactReplicationStrategy(this.wireValue);
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

