/// Specifies the encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. Required on PUT (CreateOrReplace) requests.
enum Encoding {
  valueUTF8("UTF8");

  const Encoding(this.value);
  final String value;

  static Encoding fromValue(String value) {
    for (final item in Encoding.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Encoding value: $value');
  }
}

