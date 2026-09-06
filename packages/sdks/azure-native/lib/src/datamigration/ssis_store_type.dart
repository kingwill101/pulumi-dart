import 'package:pulumi/pulumi.dart' as pulumi;

/// The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
enum SsisStoreType implements pulumi.PulumiEnum<String> {
  valueSsisCatalog("SsisCatalog");

  const SsisStoreType(this.wireValue);
  @override
  final String wireValue;

  static SsisStoreType fromValue(String value) {
    for (final item in SsisStoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisStoreType value: $value');
  }
}
