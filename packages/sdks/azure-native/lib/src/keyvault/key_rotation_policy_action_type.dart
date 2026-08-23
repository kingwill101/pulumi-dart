/// The type of action.
enum KeyRotationPolicyActionType {
  valueRotate("rotate"),
  valueNotify("notify");

  const KeyRotationPolicyActionType(this.wireValue);
  final String wireValue;

  static KeyRotationPolicyActionType fromValue(String value) {
    for (final item in KeyRotationPolicyActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyRotationPolicyActionType value: $value');
  }
}
