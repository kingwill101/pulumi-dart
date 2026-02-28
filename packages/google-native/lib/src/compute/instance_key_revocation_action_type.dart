/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstanceKeyRevocationActionType {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstanceKeyRevocationActionType(this.value);
  final String value;

  static InstanceKeyRevocationActionType fromValue(String value) {
    for (final item in InstanceKeyRevocationActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceKeyRevocationActionType value: $value');
  }
}

