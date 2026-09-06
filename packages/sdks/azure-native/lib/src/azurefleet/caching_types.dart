import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the caching requirements. Possible values are: **None,**
/// **ReadOnly,** **ReadWrite.** The default values are: **None for Standard
/// storage. ReadOnly for Premium storage.**
enum CachingTypes implements pulumi.PulumiEnum<String> {
  none("None"),
  readOnly("ReadOnly"),
  readWrite("ReadWrite");

  const CachingTypes(this.wireValue);
  @override
  final String wireValue;

  static CachingTypes fromValue(String value) {
    for (final item in CachingTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CachingTypes value: $value');
  }
}
