// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security settings.
class SecuritySettingsResponse {
  /// Physical servers per administrator.
  final pulumi.Input<double> serverSecurityCostPerServerPerYear;
  /// Virtual machines per administrator.
  final pulumi.Input<double> sqlServerSecurityCostPerServerPerYear;

  /// Creates a new [SecuritySettingsResponse].
  /// [serverSecurityCostPerServerPerYear] Physical servers per administrator.
  /// [sqlServerSecurityCostPerServerPerYear] Virtual machines per administrator.
  const SecuritySettingsResponse({
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
      serverSecurityCostPerServerPerYear: pulumi.Input.fromValue((map['serverSecurityCostPerServerPerYear'] as num).toDouble()),
      sqlServerSecurityCostPerServerPerYear: pulumi.Input.fromValue((map['sqlServerSecurityCostPerServerPerYear'] as num).toDouble()),
    );
  }
}
