/// Property value
enum BucketOwnerAccess {
  fULL("FULL"),
  nONE("NONE"),
  rEADONLY("READ_ONLY");

  const BucketOwnerAccess(this.value);
  final String value;

  static BucketOwnerAccess fromValue(String value) {
    for (final item in BucketOwnerAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BucketOwnerAccess value: $value');
  }
}

