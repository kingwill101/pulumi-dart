// ignore_for_file: unused_element, unnecessary_cast


/// Security settings.
class SecuritySettingsResponse {
  /// Physical servers per administrator.
  final double serverSecurityCostPerServerPerYear;
  /// Virtual machines per administrator.
  final double sqlServerSecurityCostPerServerPerYear;

  /// Creates a new [SecuritySettingsResponse].
  /// [serverSecurityCostPerServerPerYear] Physical servers per administrator.
  /// [sqlServerSecurityCostPerServerPerYear] Virtual machines per administrator.
  SecuritySettingsResponse({
    required this.serverSecurityCostPerServerPerYear,
    required this.sqlServerSecurityCostPerServerPerYear,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverSecurityCostPerServerPerYear': serverSecurityCostPerServerPerYear,
      'sqlServerSecurityCostPerServerPerYear': sqlServerSecurityCostPerServerPerYear,
    };
  }

  factory SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsResponse(
      serverSecurityCostPerServerPerYear: map['serverSecurityCostPerServerPerYear'] as double,
      sqlServerSecurityCostPerServerPerYear: map['sqlServerSecurityCostPerServerPerYear'] as double,
    );
  }
}

