/// PostKeyRevocationActionType of the instance.
enum InstancePostKeyRevocationActionType2 {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified(
      "POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePostKeyRevocationActionType2(this.value);
  final String value;

  static InstancePostKeyRevocationActionType2 fromValue(String value) {
    for (final item in InstancePostKeyRevocationActionType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePostKeyRevocationActionType2 value: $value');
  }
}
