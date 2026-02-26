/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstanceKeyRevocationActionType3 {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstanceKeyRevocationActionType3(this.value);
  final String value;

  static InstanceKeyRevocationActionType3 fromValue(String value) {
    for (final item in InstanceKeyRevocationActionType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceKeyRevocationActionType3 value: $value');
  }
}
