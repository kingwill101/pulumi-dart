/// PostKeyRevocationActionType of the instance.
enum InstancePropertiesPostKeyRevocationActionType {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified(
      "POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePropertiesPostKeyRevocationActionType(this.value);
  final String value;

  static InstancePropertiesPostKeyRevocationActionType fromValue(String value) {
    for (final item in InstancePropertiesPostKeyRevocationActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePropertiesPostKeyRevocationActionType value: $value');
  }
}
