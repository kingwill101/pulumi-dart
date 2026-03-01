// ignore_for_file: unused_element, unnecessary_cast


/// Security settings.
class SecuritySettings {
  /// Physical servers per administrator.
  final double serverSecurityCostPerServerPerYear;
  /// Virtual machines per administrator.
  final double sqlServerSecurityCostPerServerPerYear;

  /// Creates a new [SecuritySettings].
  /// [serverSecurityCostPerServerPerYear] Physical servers per administrator.
  /// [sqlServerSecurityCostPerServerPerYear] Virtual machines per administrator.
  SecuritySettings({
    required this.serverSecurityCostPerServerPerYear,
    required this.sqlServerSecurityCostPerServerPerYear,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverSecurityCostPerServerPerYear': serverSecurityCostPerServerPerYear,
      'sqlServerSecurityCostPerServerPerYear': sqlServerSecurityCostPerServerPerYear,
    };
  }

  factory SecuritySettings.fromMap(Map<String, dynamic> map) {
    return SecuritySettings(
      serverSecurityCostPerServerPerYear: map['serverSecurityCostPerServerPerYear'] as double,
      sqlServerSecurityCostPerServerPerYear: map['sqlServerSecurityCostPerServerPerYear'] as double,
    );
  }
}

