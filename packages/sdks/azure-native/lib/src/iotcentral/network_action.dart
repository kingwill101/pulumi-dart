import 'package:pulumi/pulumi.dart' as pulumi;

/// The default network action to apply.
enum NetworkAction implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const NetworkAction(this.wireValue);
  @override
  final String wireValue;

  static NetworkAction fromValue(String value) {
    for (final item in NetworkAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAction value: $value');
  }
}
