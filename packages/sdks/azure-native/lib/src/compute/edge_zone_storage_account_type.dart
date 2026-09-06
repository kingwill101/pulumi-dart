import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the storage account type to be used to store the image. This property is not updatable.
enum EdgeZoneStorageAccountType implements pulumi.PulumiEnum<String> {
  standardLRS("Standard_LRS"),
  standardZRS("Standard_ZRS"),
  standardSSDLRS("StandardSSD_LRS"),
  premiumLRS("Premium_LRS");

  const EdgeZoneStorageAccountType(this.wireValue);
  @override
  final String wireValue;

  static EdgeZoneStorageAccountType fromValue(String value) {
    for (final item in EdgeZoneStorageAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeZoneStorageAccountType value: $value');
  }
}
