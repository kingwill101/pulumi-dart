/// The write behavior for the operation. Default is Bulk Insert.
enum AzurePostgreSqlWriteMethodEnum {
  bulkInsert("BulkInsert"),
  copyCommand("CopyCommand"),
  upsert("Upsert");

  const AzurePostgreSqlWriteMethodEnum(this.wireValue);
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
