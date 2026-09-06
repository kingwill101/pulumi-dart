import 'package:pulumi/pulumi.dart' as pulumi;

/// This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
enum DiscountEntityType implements pulumi.PulumiEnum<String> {
  primary("Primary"),
  affiliate("Affiliate");

  const DiscountEntityType(this.wireValue);
  @override
  final String wireValue;

  static DiscountEntityType fromValue(String value) {
    for (final item in DiscountEntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountEntityType value: $value');
  }
}
