// ignore_for_file: unused_element, unnecessary_cast


/// SQL managed instance assessment settings.
class SqlMiSettings {
  /// Gets or sets the azure PAAS SQL instance type.
  final String? azureSqlInstanceType;
  /// Gets or sets the azure SQL service tier.
  final String? azureSqlServiceTier;

  /// Creates a new [SqlMiSettings].
  /// [azureSqlInstanceType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  SqlMiSettings({
    this.azureSqlInstanceType,
    this.azureSqlServiceTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSqlInstanceType': ?azureSqlInstanceType,
      'azureSqlServiceTier': ?azureSqlServiceTier,
    };
  }

  factory SqlMiSettings.fromMap(Map<String, dynamic> map) {
    return SqlMiSettings(
      azureSqlInstanceType: map['azureSqlInstanceType'] == null ? null : map['azureSqlInstanceType'] as String,
      azureSqlServiceTier: map['azureSqlServiceTier'] == null ? null : map['azureSqlServiceTier'] as String,
    );
  }
}

