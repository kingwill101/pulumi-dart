/// The type of action to take.
enum LifecyclePolicyActionType {
  expire("expire"),
  transition("transition");

  const LifecyclePolicyActionType(this.wireValue);
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
