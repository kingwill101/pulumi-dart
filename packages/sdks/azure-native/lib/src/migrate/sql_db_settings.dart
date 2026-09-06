// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL database assessment settings.
class SqlDbSettings {
  /// Gets or sets the azure SQL compute tier.
  final pulumi.Input<dynamic>? azureSqlComputeTier;
  /// Gets or sets the azure PAAS SQL instance type.
  final pulumi.Input<dynamic>? azureSqlDataBaseType;
  /// Gets or sets the azure SQL purchase model.
  final pulumi.Input<dynamic>? azureSqlPurchaseModel;
  /// Gets or sets the azure SQL service tier.
  final pulumi.Input<dynamic>? azureSqlServiceTier;

  /// Creates a new [SqlDbSettings].
  /// [azureSqlComputeTier] Gets or sets the azure SQL compute tier.
  /// [azureSqlDataBaseType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlPurchaseModel] Gets or sets the azure SQL purchase model.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  const SqlDbSettings({
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
      azureSqlComputeTier: (() { final guardedValue = map['azureSqlComputeTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureSqlDataBaseType: (() { final guardedValue = map['azureSqlDataBaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureSqlPurchaseModel: (() { final guardedValue = map['azureSqlPurchaseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureSqlServiceTier: (() { final guardedValue = map['azureSqlServiceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
