import 'package:pulumi/pulumi.dart' as pulumi;

enum ApplicationProtocol implements pulumi.PulumiEnum<String> {
  hTTP("HTTP"),
  hTTPS("HTTPS");

  const ApplicationProtocol(this.wireValue);
  @override
  final String wireValue;

  static ApplicationProtocol fromValue(String value) {
    for (final item in ApplicationProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationProtocol value: $value');
  }
}
