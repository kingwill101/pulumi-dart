/// PostKeyRevocationActionType of the instance.
enum InstancePropertiesPostKeyRevocationActionType2 {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified(
      "POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePropertiesPostKeyRevocationActionType2(this.value);
  final String value;

  static InstancePropertiesPostKeyRevocationActionType2 fromValue(
      String value) {
    for (final item in InstancePropertiesPostKeyRevocationActionType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePropertiesPostKeyRevocationActionType2 value: $value');
  }
}
