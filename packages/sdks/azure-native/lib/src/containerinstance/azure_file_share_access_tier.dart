import 'package:pulumi/pulumi.dart' as pulumi;

/// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
enum AzureFileShareAccessTier implements pulumi.PulumiEnum<String> {
  cool("Cool"),
  hot("Hot"),
  premium("Premium"),
  transactionOptimized("TransactionOptimized");

  const AzureFileShareAccessTier(this.wireValue);
  @override
  final String wireValue;

  static AzureFileShareAccessTier fromValue(String value) {
    for (final item in AzureFileShareAccessTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFileShareAccessTier value: $value');
  }
}
