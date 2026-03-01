// ignore_for_file: unused_element, unnecessary_cast


/// SQL managed instance assessment settings.
class SqlMiSettingsResponse {
  /// Gets or sets the azure PAAS SQL instance type.
  final String? azureSqlInstanceType;
  /// Gets or sets the azure SQL service tier.
  final String? azureSqlServiceTier;

  /// Creates a new [SqlMiSettingsResponse].
  /// [azureSqlInstanceType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  SqlMiSettingsResponse({
    this.azureSqlInstanceType,
    this.azureSqlServiceTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSqlInstanceType': ?azureSqlInstanceType,
      'azureSqlServiceTier': ?azureSqlServiceTier,
    };
  }

  factory SqlMiSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlMiSettingsResponse(
      azureSqlInstanceType: map['azureSqlInstanceType'] == null ? null : map['azureSqlInstanceType'] as String,
      azureSqlServiceTier: map['azureSqlServiceTier'] == null ? null : map['azureSqlServiceTier'] as String,
    );
  }
}

