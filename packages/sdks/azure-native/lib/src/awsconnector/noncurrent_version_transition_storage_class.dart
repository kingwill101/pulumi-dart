import 'package:pulumi/pulumi.dart' as pulumi;

/// The class of storage used to store the object.
enum NoncurrentVersionTransitionStorageClass implements pulumi.PulumiEnum<String> {
  dEEPARCHIVE("DEEP_ARCHIVE"),
  gLACIER("GLACIER"),
  gLACIERIR("GLACIER_IR"),
  iNTELLIGENTTIERING("INTELLIGENT_TIERING"),
  oNEZONEIA("ONEZONE_IA"),
  sTANDARDIA("STANDARD_IA");

  const NoncurrentVersionTransitionStorageClass(this.wireValue);
  @override
  final String wireValue;

  static NoncurrentVersionTransitionStorageClass fromValue(String value) {
    for (final item in NoncurrentVersionTransitionStorageClass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NoncurrentVersionTransitionStorageClass value: $value');
  }
}
