import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the SKU name of the account.
enum SkuNameEnum implements pulumi.PulumiEnum<String> {
  free("Free"),
  basic("Basic");

  const SkuNameEnum(this.wireValue);
  @override
  final String wireValue;

  static SkuNameEnum fromValue(String value) {
    for (final item in SkuNameEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuNameEnum value: $value');
  }
}
