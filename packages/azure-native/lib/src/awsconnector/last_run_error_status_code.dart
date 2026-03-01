/// Property value
enum LastRunErrorStatusCode {
  eRROR("ERROR"),
  nONE("NONE");

  const LastRunErrorStatusCode(this.value);
  final String value;

  static LastRunErrorStatusCode fromValue(String value) {
    for (final item in LastRunErrorStatusCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LastRunErrorStatusCode value: $value');
  }
}

