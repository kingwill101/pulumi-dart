import 'package:pulumi/pulumi.dart' as pulumi;

/// Minimum version of Ssl protocol to be supported on application gateway.
enum ApplicationGatewaySslProtocol implements pulumi.PulumiEnum<String> {
  valueTLSv10("TLSv1_0"),
  valueTLSv11("TLSv1_1"),
  valueTLSv12("TLSv1_2"),
  valueTLSv13("TLSv1_3");

  const ApplicationGatewaySslProtocol(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewaySslProtocol fromValue(String value) {
    for (final item in ApplicationGatewaySslProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewaySslProtocol value: $value');
  }
}
