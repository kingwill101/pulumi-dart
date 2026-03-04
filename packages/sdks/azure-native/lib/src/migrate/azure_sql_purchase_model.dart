/// Gets or sets the azure SQL purchase model.
enum AzureSqlPurchaseModel {
  unknown("Unknown"),
  vCore("VCore"),
  dTU("DTU");

  const AzureSqlPurchaseModel(this.wireValue);
  final String wireValue;

  static AzureSqlPurchaseModel fromValue(String value) {
    for (final item in AzureSqlPurchaseModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSqlPurchaseModel value: $value');
  }
}
