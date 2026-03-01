/// Gets or sets the azure SQL purchase model.
enum AzureSqlPurchaseModel {
  unknown("Unknown"),
  vCore("VCore"),
  dTU("DTU");

  const AzureSqlPurchaseModel(this.value);
  final String value;

  static AzureSqlPurchaseModel fromValue(String value) {
    for (final item in AzureSqlPurchaseModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlPurchaseModel value: $value');
  }
}

