/// Default Action for Network Rule Set
enum DefaultAction {
  valueDeny("Deny"),
  valueAllow("Allow");

  const DefaultAction(this.wireValue);
  final String wireValue;

  static DefaultAction fromValue(String value) {
    for (final item in DefaultAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultAction value: $value');
  }
}

