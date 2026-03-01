enum TargetActionType {
  update("update");

  const TargetActionType(this.value);
  final String value;

  static TargetActionType fromValue(String value) {
    for (final item in TargetActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetActionType value: $value');
  }
}

