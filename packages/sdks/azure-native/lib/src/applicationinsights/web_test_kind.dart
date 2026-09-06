import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of web test this is, valid choices are ping, multistep and standard.
enum WebTestKind implements pulumi.PulumiEnum<String> {
  ping("ping"),
  multistep("multistep"),
  standard("standard");

  const WebTestKind(this.wireValue);
  @override
  final String wireValue;

  static WebTestKind fromValue(String value) {
    for (final item in WebTestKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebTestKind value: $value');
  }
}
