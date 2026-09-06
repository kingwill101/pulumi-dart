import 'package:pulumi/pulumi.dart' as pulumi;

/// Default Action for Network Rule Set
enum DefaultAction implements pulumi.PulumiEnum<String> {
  valueDeny("Deny"),
  valueAllow("Allow");

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
