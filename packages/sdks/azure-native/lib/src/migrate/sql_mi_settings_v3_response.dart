// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL managed instance assessment settings V3.
class SqlMiSettingsV3Response {
  /// Gets or sets the azure PAAS SQL instance type.
  final pulumi.Input<String>? azureSqlInstanceType;
  /// Gets or sets the azure SQL service tier.
  final pulumi.Input<String>? azureSqlServiceTier;

  /// Creates a new [SqlMiSettingsV3Response].
  /// [azureSqlInstanceType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  const SqlMiSettingsV3Response({
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
      azureSqlInstanceType: (() { final guardedValue = map['azureSqlInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureSqlServiceTier: (() { final guardedValue = map['azureSqlServiceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
