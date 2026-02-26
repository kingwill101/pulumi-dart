/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstancePropertiesKeyRevocationActionType2 {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstancePropertiesKeyRevocationActionType2(this.value);
  final String value;

  static InstancePropertiesKeyRevocationActionType2 fromValue(String value) {
    for (final item in InstancePropertiesKeyRevocationActionType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstancePropertiesKeyRevocationActionType2 value: $value');
  }
}
