/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstancePropertiesKeyRevocationActionType3 {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstancePropertiesKeyRevocationActionType3(this.value);
  final String value;

  static InstancePropertiesKeyRevocationActionType3 fromValue(String value) {
    for (final item in InstancePropertiesKeyRevocationActionType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePropertiesKeyRevocationActionType3 value: $value');
  }
}
