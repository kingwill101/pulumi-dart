import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum BucketOwnerAccess implements pulumi.PulumiEnum<String> {
  fULL("FULL"),
  nONE("NONE"),
  rEADONLY("READ_ONLY");

  const BucketOwnerAccess(this.wireValue);
  @override
  final String wireValue;

  static BucketOwnerAccess fromValue(String value) {
    for (final item in BucketOwnerAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BucketOwnerAccess value: $value');
  }
}
