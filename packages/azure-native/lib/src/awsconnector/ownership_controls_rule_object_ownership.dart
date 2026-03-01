/// Specifies an object ownership rule.
enum OwnershipControlsRuleObjectOwnership {
  bucketOwnerEnforced("BucketOwnerEnforced"),
  bucketOwnerPreferred("BucketOwnerPreferred"),
  objectWriter("ObjectWriter");

  const OwnershipControlsRuleObjectOwnership(this.value);
  final String value;

  static OwnershipControlsRuleObjectOwnership fromValue(String value) {
    for (final item in OwnershipControlsRuleObjectOwnership.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnershipControlsRuleObjectOwnership value: $value');
  }
}

