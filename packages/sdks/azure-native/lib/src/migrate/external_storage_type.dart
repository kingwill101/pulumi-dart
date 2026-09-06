import 'package:pulumi/pulumi.dart' as pulumi;

/// Different External storage skus.
enum ExternalStorageType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  none("None"),
  anfStandard("AnfStandard"),
  anfPremium("AnfPremium"),
  anfUltra("AnfUltra");

  const ExternalStorageType(this.wireValue);
  @override
  final String wireValue;

  static ExternalStorageType fromValue(String value) {
    for (final item in ExternalStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalStorageType value: $value');
  }
}
