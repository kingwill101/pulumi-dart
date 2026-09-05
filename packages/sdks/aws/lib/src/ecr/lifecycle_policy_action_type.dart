import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of action to take.
enum LifecyclePolicyActionType implements pulumi.PulumiEnum<String> {
  expire("expire"),
  transition("transition");

  const LifecyclePolicyActionType(this.wireValue);
  @override
  final String wireValue;

  static LifecyclePolicyActionType fromValue(String value) {
    for (final item in LifecyclePolicyActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyActionType value: $value');
  }
}
