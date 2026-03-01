/// rule action
enum ActionEnum {
  valueAllow("Allow"),
  valueDenySilent("DenySilent"),
  valueDenyResetServer("DenyResetServer"),
  valueDenyResetBoth("DenyResetBoth");

  const ActionEnum(this.value);
  final String value;

  static ActionEnum fromValue(String value) {
    for (final item in ActionEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionEnum value: $value');
  }
}

