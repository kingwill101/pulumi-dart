/// The write behavior for the operation. Default is Bulk Insert.
enum AzurePostgreSqlWriteMethodEnum {
  valueBulkInsert("BulkInsert"),
  valueCopyCommand("CopyCommand"),
  valueUpsert("Upsert");

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
