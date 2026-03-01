/// Specifies the protocol of WinRM listener. Possible values are: **http,**
/// **https.**
enum ProtocolTypes {
  http("Http"),
  https("Https");

  const ProtocolTypes(this.value);
  final String value;

  static ProtocolTypes fromValue(String value) {
    for (final item in ProtocolTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtocolTypes value: $value');
  }
}

