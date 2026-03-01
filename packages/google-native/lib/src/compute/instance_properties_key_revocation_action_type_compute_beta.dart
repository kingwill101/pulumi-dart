/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstancePropertiesKeyRevocationActionTypeComputeBeta {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstancePropertiesKeyRevocationActionTypeComputeBeta(this.value);
  final String value;

  static InstancePropertiesKeyRevocationActionTypeComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in InstancePropertiesKeyRevocationActionTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstancePropertiesKeyRevocationActionTypeComputeBeta value: $value',
    );
  }
}
