/// Different External storage skus.
enum ExternalStorageType {
  unknown("Unknown"),
  none("None"),
  anfStandard("AnfStandard"),
  anfPremium("AnfPremium"),
  anfUltra("AnfUltra");

  const ExternalStorageType(this.value);
  final String value;

  static ExternalStorageType fromValue(String value) {
    for (final item in ExternalStorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalStorageType value: $value');
  }
}

