// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL database assessment settings.
class SqlDbSettingsResponse {
  /// Gets or sets the azure SQL compute tier.
  final pulumi.Input<String>? azureSqlComputeTier;
  /// Gets or sets the azure PAAS SQL instance type.
  final pulumi.Input<String>? azureSqlDataBaseType;
  /// Gets or sets the azure SQL purchase model.
  final pulumi.Input<String>? azureSqlPurchaseModel;
  /// Gets or sets the azure SQL service tier.
  final pulumi.Input<String>? azureSqlServiceTier;

  /// Creates a new [SqlDbSettingsResponse].
  /// [azureSqlComputeTier] Gets or sets the azure SQL compute tier.
  /// [azureSqlDataBaseType] Gets or sets the azure PAAS SQL instance type.
  /// [azureSqlPurchaseModel] Gets or sets the azure SQL purchase model.
  /// [azureSqlServiceTier] Gets or sets the azure SQL service tier.
  SqlDbSettingsResponse({
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

  factory SqlDbSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlDbSettingsResponse(
      azureSqlComputeTier: map['azureSqlComputeTier'] == null ? null : (map['azureSqlComputeTier']! as String).input(),
      azureSqlDataBaseType: map['azureSqlDataBaseType'] == null ? null : (map['azureSqlDataBaseType']! as String).input(),
      azureSqlPurchaseModel: map['azureSqlPurchaseModel'] == null ? null : (map['azureSqlPurchaseModel']! as String).input(),
      azureSqlServiceTier: map['azureSqlServiceTier'] == null ? null : (map['azureSqlServiceTier']! as String).input(),
    );
  }
}

