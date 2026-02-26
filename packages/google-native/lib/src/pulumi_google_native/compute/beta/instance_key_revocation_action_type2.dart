/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstanceKeyRevocationActionType2 {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstanceKeyRevocationActionType2(this.value);
  final String value;

  static InstanceKeyRevocationActionType2 fromValue(String value) {
    for (final item in InstanceKeyRevocationActionType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceKeyRevocationActionType2 value: $value');
  }
}
