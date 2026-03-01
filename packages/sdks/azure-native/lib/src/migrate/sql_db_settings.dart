// ignore_for_file: unused_element, unnecessary_cast


/// SQL database assessment settings.
class SqlDbSettings {
  /// Gets or sets the azure SQL compute tier.
  final String? azureSqlComputeTier;
  /// Gets or sets the azure PAAS SQL instance type.
  final String? azureSqlDataBaseType;
  /// Gets or sets the azure SQL purchase model.
  final String? azureSqlPurchaseModel;
  /// Gets or sets the azure SQL service tier.
  final String? azureSqlServiceTier;

  /// Creates a new [SqlDbSettings].
  /// [azureSqlComputeTier] Gets or sets the azure SQL compute tier.
  /// [azureSqlDataBaseType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlPurchaseModel] Gets or sets the azure SQL purchase model.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  SqlDbSettings({
    this.azureSqlComputeTier,
    this.azureSqlDataBaseType,
    this.azureSqlPurchaseModel,
    this.azureSqlServiceTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSqlComputeTier': ?azureSqlComputeTier,
      'azureSqlDataBaseType': ?azureSqlDataBaseType,
      'azureSqlPurchaseModel': ?azureSqlPurchaseModel,
      'azureSqlServiceTier': ?azureSqlServiceTier,
    };
  }

  factory SqlDbSettings.fromMap(Map<String, dynamic> map) {
    return SqlDbSettings(
      azureSqlComputeTier: map['azureSqlComputeTier'] == null ? null : map['azureSqlComputeTier'] as String,
      azureSqlDataBaseType: map['azureSqlDataBaseType'] == null ? null : map['azureSqlDataBaseType'] as String,
      azureSqlPurchaseModel: map['azureSqlPurchaseModel'] == null ? null : map['azureSqlPurchaseModel'] as String,
      azureSqlServiceTier: map['azureSqlServiceTier'] == null ? null : map['azureSqlServiceTier'] as String,
    );
  }
}

