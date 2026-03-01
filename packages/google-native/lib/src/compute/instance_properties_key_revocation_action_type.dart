/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstancePropertiesKeyRevocationActionType {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstancePropertiesKeyRevocationActionType(this.value);
  final String value;

  static InstancePropertiesKeyRevocationActionType fromValue(String value) {
    for (final item in InstancePropertiesKeyRevocationActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstancePropertiesKeyRevocationActionType value: $value',
    );
  }
}
