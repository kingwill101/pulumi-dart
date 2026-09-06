import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an object ownership rule.
enum OwnershipControlsRuleObjectOwnership implements pulumi.PulumiEnum<String> {
  bucketOwnerEnforced("BucketOwnerEnforced"),
  bucketOwnerPreferred("BucketOwnerPreferred"),
  objectWriter("ObjectWriter");

  const OwnershipControlsRuleObjectOwnership(this.wireValue);
  @override
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
