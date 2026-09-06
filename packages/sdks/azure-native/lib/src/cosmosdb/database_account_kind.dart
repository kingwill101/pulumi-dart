import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the type of database account. This can only be set at database account creation.
enum DatabaseAccountKind implements pulumi.PulumiEnum<String> {
  valueGlobalDocumentDB("GlobalDocumentDB"),
  valueMongoDB("MongoDB"),
  valueParse("Parse");

  const DatabaseAccountKind(this.wireValue);
  @override
  final String wireValue;

  static DatabaseAccountKind fromValue(String value) {
    for (final item in DatabaseAccountKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseAccountKind value: $value');
  }
}
