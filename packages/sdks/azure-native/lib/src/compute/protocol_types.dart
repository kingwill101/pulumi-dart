import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the protocol of WinRM listener. Possible values are: **http,** **https.**
enum ProtocolTypes implements pulumi.PulumiEnum<String> {
  valueHttp("Http"),
  valueHttps("Https");

  const ProtocolTypes(this.wireValue);
  @override
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
