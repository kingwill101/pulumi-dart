import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of conditional credit entity
enum ConditionalCreditEntityType implements pulumi.PulumiEnum<String> {
  primary("Primary"),
  contributor("Contributor");

  const ConditionalCreditEntityType(this.wireValue);
  @override
  final String wireValue;

  static ConditionalCreditEntityType fromValue(String value) {
    for (final item in ConditionalCreditEntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionalCreditEntityType value: $value');
  }
}
