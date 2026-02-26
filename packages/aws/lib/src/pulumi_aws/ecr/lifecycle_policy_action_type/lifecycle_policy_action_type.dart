/// The type of action to take.
enum LifecyclePolicyActionType {
  expire("expire");

  const LifecyclePolicyActionType(this.value);
  final String value;

  static LifecyclePolicyActionType fromValue(String value) {
    for (final item in LifecyclePolicyActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyActionType value: $value');
  }
}
