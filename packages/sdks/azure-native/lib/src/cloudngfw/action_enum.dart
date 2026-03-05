/// rule action
enum ActionEnum {
  valueAllow("Allow"),
  valueDenySilent("DenySilent"),
  valueDenyResetServer("DenyResetServer"),
  valueDenyResetBoth("DenyResetBoth");

  const ActionEnum(this.wireValue);
  final String wireValue;

  static ActionEnum fromValue(String value) {
    for (final item in ActionEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionEnum value: $value');
  }
}

