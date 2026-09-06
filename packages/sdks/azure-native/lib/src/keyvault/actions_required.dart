import 'package:pulumi/pulumi.dart' as pulumi;

/// A message indicating if changes on the service provider require any updates on the consumer.
enum ActionsRequired implements pulumi.PulumiEnum<String> {
  valueNone("None");

  const ActionsRequired(this.wireValue);
  @override
  final String wireValue;

  static ActionsRequired fromValue(String value) {
    for (final item in ActionsRequired.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionsRequired value: $value');
  }
}
