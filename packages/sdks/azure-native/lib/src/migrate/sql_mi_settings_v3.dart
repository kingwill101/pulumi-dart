// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL managed instance assessment settings V3.
class SqlMiSettingsV3 {
  /// Gets or sets the azure PAAS SQL instance type.
  final pulumi.Input<dynamic>? azureSqlInstanceType;
  /// Gets or sets the azure SQL service tier.
  final pulumi.Input<dynamic>? azureSqlServiceTier;

  /// Creates a new [SqlMiSettingsV3].
  /// [azureSqlInstanceType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  const SqlMiSettingsV3({
    this.azureSqlInstanceType,
    this.azureSqlServiceTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSqlInstanceType': ?azureSqlInstanceType,
      'azureSqlServiceTier': ?azureSqlServiceTier,
    };
  }

  factory SqlMiSettingsV3.fromMap(Map<String, dynamic> map) {
    return SqlMiSettingsV3(
      azureSqlInstanceType: (() { final guardedValue = map['azureSqlInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureSqlServiceTier: (() { final guardedValue = map['azureSqlServiceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
