import 'package:pulumi/pulumi.dart' as pulumi;

/// The write behavior for the operation. Default is Bulk Insert.
enum AzurePostgreSqlWriteMethodEnum implements pulumi.PulumiEnum<String> {
  bulkInsert("BulkInsert"),
  copyCommand("CopyCommand"),
  upsert("Upsert");

  const AzurePostgreSqlWriteMethodEnum(this.wireValue);
  @override
  final String wireValue;

  static AzurePostgreSqlWriteMethodEnum fromValue(String value) {
    for (final item in AzurePostgreSqlWriteMethodEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzurePostgreSqlWriteMethodEnum value: $value');
  }
}
