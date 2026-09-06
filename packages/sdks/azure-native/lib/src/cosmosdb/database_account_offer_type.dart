import 'package:pulumi/pulumi.dart' as pulumi;

/// The offer type for the database
enum DatabaseAccountOfferType implements pulumi.PulumiEnum<String> {
  valueStandard("Standard");

  const DatabaseAccountOfferType(this.wireValue);
  @override
  final String wireValue;

  static DatabaseAccountOfferType fromValue(String value) {
    for (final item in DatabaseAccountOfferType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseAccountOfferType value: $value');
  }
}
