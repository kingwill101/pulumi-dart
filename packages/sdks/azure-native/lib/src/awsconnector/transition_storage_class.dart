import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage class to which you want the object to transition.
enum TransitionStorageClass implements pulumi.PulumiEnum<String> {
  dEEPARCHIVE("DEEP_ARCHIVE"),
  gLACIER("GLACIER"),
  gLACIERIR("GLACIER_IR"),
  iNTELLIGENTTIERING("INTELLIGENT_TIERING"),
  oNEZONEIA("ONEZONE_IA"),
  sTANDARDIA("STANDARD_IA");

  const TransitionStorageClass(this.wireValue);
  @override
  final String wireValue;

  static TransitionStorageClass fromValue(String value) {
    for (final item in TransitionStorageClass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransitionStorageClass value: $value');
  }
}
