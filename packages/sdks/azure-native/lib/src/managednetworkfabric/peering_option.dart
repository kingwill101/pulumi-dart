import 'package:pulumi/pulumi.dart' as pulumi;

/// Peering option list.
enum PeeringOption implements pulumi.PulumiEnum<String> {
  valueOptionA("OptionA"),
  valueOptionB("OptionB");

  const PeeringOption(this.wireValue);
  @override
  final String wireValue;

  static PeeringOption fromValue(String value) {
    for (final item in PeeringOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PeeringOption value: $value');
  }
}
