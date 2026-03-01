/// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
enum AzureFileShareAccessTier {
  valueCool("Cool"),
  valueHot("Hot"),
  valuePremium("Premium"),
  valueTransactionOptimized("TransactionOptimized");

  const AzureFileShareAccessTier(this.value);
  final String value;

  static AzureFileShareAccessTier fromValue(String value) {
    for (final item in AzureFileShareAccessTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFileShareAccessTier value: $value');
  }
}

