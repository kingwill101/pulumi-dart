/// The type of action.
enum KeyRotationPolicyActionType {
  valueRotate("rotate"),
  valueNotify("notify");

  const KeyRotationPolicyActionType(this.value);
  final String value;

  static KeyRotationPolicyActionType fromValue(String value) {
    for (final item in KeyRotationPolicyActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyRotationPolicyActionType value: $value');
  }
}

