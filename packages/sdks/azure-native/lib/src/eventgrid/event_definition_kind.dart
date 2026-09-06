import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of event type used.
enum EventDefinitionKind implements pulumi.PulumiEnum<String> {
  valueInline("Inline");

  const EventDefinitionKind(this.wireValue);
  @override
  final String wireValue;

  static EventDefinitionKind fromValue(String value) {
    for (final item in EventDefinitionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventDefinitionKind value: $value');
  }
}
