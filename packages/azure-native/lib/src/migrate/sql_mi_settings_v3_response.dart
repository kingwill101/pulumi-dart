// ignore_for_file: unused_element, unnecessary_cast


/// SQL managed instance assessment settings V3.
class SqlMiSettingsV3Response {
  /// Gets or sets the azure PAAS SQL instance type.
  final String? azureSqlInstanceType;
  /// Gets or sets the azure SQL service tier.
  final String? azureSqlServiceTier;

  /// Creates a new [SqlMiSettingsV3Response].
  /// [azureSqlInstanceType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  SqlMiSettingsV3Response({
    this.azureSqlInstanceType,
    this.azureSqlServiceTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSqlInstanceType': ?azureSqlInstanceType,
      'azureSqlServiceTier': ?azureSqlServiceTier,
    };
  }

  factory SqlMiSettingsV3Response.fromMap(Map<String, dynamic> map) {
    return SqlMiSettingsV3Response(
      azureSqlInstanceType: map['azureSqlInstanceType'] == null ? null : map['azureSqlInstanceType'] as String,
      azureSqlServiceTier: map['azureSqlServiceTier'] == null ? null : map['azureSqlServiceTier'] as String,
    );
  }
}

