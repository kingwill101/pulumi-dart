import 'package:pulumi/pulumi.dart' as pulumi;

/// The partner type.
enum PartnerType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueB2B("B2B");

  const PartnerType(this.wireValue);
  @override
  final String wireValue;

  static PartnerType fromValue(String value) {
    for (final item in PartnerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerType value: $value');
  }
}
