/// Specifies an object ownership rule.
enum OwnershipControlsRuleObjectOwnership {
  bucketOwnerEnforced("BucketOwnerEnforced"),
  bucketOwnerPreferred("BucketOwnerPreferred"),
  objectWriter("ObjectWriter");

  const OwnershipControlsRuleObjectOwnership(this.wireValue);
  final String wireValue;

  static OwnershipControlsRuleObjectOwnership fromValue(String value) {
    for (final item in OwnershipControlsRuleObjectOwnership.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnershipControlsRuleObjectOwnership value: $value');
  }
}

