/// The class of storage used to store the object.
enum NoncurrentVersionTransitionStorageClass {
  dEEPARCHIVE("DEEP_ARCHIVE"),
  gLACIER("GLACIER"),
  gLACIERIR("GLACIER_IR"),
  iNTELLIGENTTIERING("INTELLIGENT_TIERING"),
  oNEZONEIA("ONEZONE_IA"),
  sTANDARDIA("STANDARD_IA");

  const NoncurrentVersionTransitionStorageClass(this.value);
  final String value;

  static NoncurrentVersionTransitionStorageClass fromValue(String value) {
    for (final item in NoncurrentVersionTransitionStorageClass.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NoncurrentVersionTransitionStorageClass value: $value');
  }
}

