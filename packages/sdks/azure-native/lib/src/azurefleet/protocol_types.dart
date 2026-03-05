/// Specifies the protocol of WinRM listener. Possible values are: **http,**
/// **https.**
enum ProtocolTypes {
  http("Http"),
  https("Https");

  const ProtocolTypes(this.wireValue);
  final String wireValue;

  static ProtocolTypes fromValue(String value) {
    for (final item in ProtocolTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtocolTypes value: $value');
  }
}

