import 'package:pulumi/pulumi.dart' as pulumi;

/// Server platform type for connection
enum SqlSourcePlatform implements pulumi.PulumiEnum<String> {
  valueSqlOnPrem("SqlOnPrem");

  const SqlSourcePlatform(this.wireValue);
  @override
  final String wireValue;

  static SqlSourcePlatform fromValue(String value) {
    for (final item in SqlSourcePlatform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlSourcePlatform value: $value');
  }
}
