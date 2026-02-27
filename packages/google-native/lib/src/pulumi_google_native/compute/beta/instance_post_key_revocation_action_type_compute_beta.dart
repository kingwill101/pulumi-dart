/// PostKeyRevocationActionType of the instance.
enum InstancePostKeyRevocationActionTypeComputeBeta {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified(
      "POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePostKeyRevocationActionTypeComputeBeta(this.value);
  final String value;

  static InstancePostKeyRevocationActionTypeComputeBeta fromValue(
      String value) {
    for (final item in InstancePostKeyRevocationActionTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePostKeyRevocationActionTypeComputeBeta value: $value');
  }
}
