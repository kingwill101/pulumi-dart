/// Default Action for Network Rule Set
enum DefaultAction {
  valueDeny("Deny"),
  valueAllow("Allow");

  const DefaultAction(this.value);
  final String value;

  static DefaultAction fromValue(String value) {
    for (final item in DefaultAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultAction value: $value');
  }
}

