/// PostKeyRevocationActionType of the instance.
enum InstancePropertiesPostKeyRevocationActionTypeComputeBeta {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified(
      "POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePropertiesPostKeyRevocationActionTypeComputeBeta(this.value);
  final String value;

  static InstancePropertiesPostKeyRevocationActionTypeComputeBeta fromValue(
      String value) {
    for (final item
        in InstancePropertiesPostKeyRevocationActionTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePropertiesPostKeyRevocationActionTypeComputeBeta value: $value');
  }
}
