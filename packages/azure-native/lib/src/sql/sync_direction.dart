/// Sync direction of the sync member.
enum SyncDirection {
  valueBidirectional("Bidirectional"),
  valueOneWayMemberToHub("OneWayMemberToHub"),
  valueOneWayHubToMember("OneWayHubToMember");

  const SyncDirection(this.value);
  final String value;

  static SyncDirection fromValue(String value) {
    for (final item in SyncDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncDirection value: $value');
  }
}

