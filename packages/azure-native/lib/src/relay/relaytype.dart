/// WCF relay type.
enum Relaytype {
  valueNetTcp("NetTcp"),
  valueHttp("Http");

  const Relaytype(this.value);
  final String value;

  static Relaytype fromValue(String value) {
    for (final item in Relaytype.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Relaytype value: $value');
  }
}

