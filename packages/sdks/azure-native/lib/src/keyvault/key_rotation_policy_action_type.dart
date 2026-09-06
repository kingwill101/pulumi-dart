import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action.
enum KeyRotationPolicyActionType implements pulumi.PulumiEnum<String> {
  valueRotate("rotate"),
  valueNotify("notify");

  const KeyRotationPolicyActionType(this.wireValue);
  @override
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
