// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL database assessment settings V3.
class SqlDbSettingsV3Response {
  /// Gets or sets the azure SQL compute tier.
  final pulumi.Input<String>? azureSqlComputeTier;
  /// Gets or sets the azure PAAS SQL instance type.
  final pulumi.Input<String>? azureSqlDataBaseType;
  /// Gets or sets the azure SQL purchase model.
  final pulumi.Input<String>? azureSqlPurchaseModel;
  /// Gets or sets the azure SQL service tier.
  final pulumi.Input<String>? azureSqlServiceTier;

  /// Creates a new [SqlDbSettingsV3Response].
  /// [azureSqlComputeTier] Gets or sets the azure SQL compute tier.
  /// [azureSqlDataBaseType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlPurchaseModel] Gets or sets the azure SQL purchase model.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  const SqlDbSettingsV3Response({
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

  factory SqlDbSettingsV3Response.fromMap(Map<String, dynamic> map) {
    return SqlDbSettingsV3Response(
      azureSqlComputeTier: (() { final guardedValue = map['azureSqlComputeTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureSqlDataBaseType: (() { final guardedValue = map['azureSqlDataBaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureSqlPurchaseModel: (() { final guardedValue = map['azureSqlPurchaseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureSqlServiceTier: (() { final guardedValue = map['azureSqlServiceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

