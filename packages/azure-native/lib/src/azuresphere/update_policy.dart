/// Update policy of the device group.
enum UpdatePolicy {
  updateAll("UpdateAll"),
  no3rdPartyAppUpdates("No3rdPartyAppUpdates");

  const UpdatePolicy(this.value);
  final String value;

  static UpdatePolicy fromValue(String value) {
    for (final item in UpdatePolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdatePolicy value: $value');
  }
}

