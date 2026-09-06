import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum DefaultAction implements pulumi.PulumiEnum<String> {
  aLLOW("ALLOW"),
  dENY("DENY");

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
