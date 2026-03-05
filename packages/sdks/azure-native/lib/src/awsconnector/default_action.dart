/// Property value
enum DefaultAction {
  aLLOW("ALLOW"),
  dENY("DENY");

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

