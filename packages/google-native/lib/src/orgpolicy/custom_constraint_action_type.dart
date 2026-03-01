/// Allow or deny type.
enum CustomConstraintActionType {
  actionTypeUnspecified("ACTION_TYPE_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const CustomConstraintActionType(this.value);
  final String value;

  static CustomConstraintActionType fromValue(String value) {
    for (final item in CustomConstraintActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomConstraintActionType value: $value');
  }
}
