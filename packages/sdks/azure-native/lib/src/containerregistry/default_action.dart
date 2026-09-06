import 'package:pulumi/pulumi.dart' as pulumi;

/// The default action of allow or deny when no other rules match.
enum DefaultAction implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const DefaultAction(this.wireValue);
  @override
  final String wireValue;

  static DefaultAction fromValue(String value) {
    for (final item in DefaultAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultAction value: $value');
  }
}
