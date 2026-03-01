// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_management_settings.dart';

/// Azure arc settings for a business case.
class AzureArcSettings {
  /// AzureArc state indicates whether to include azure arc related costs in on-premises or not.
  final String azureArcState;
  /// Gets Azure arc labour cost percentage.
  final double? laborCostPercentage;
  /// Management settings.
  final AzureArcManagementSettings? managementSettings;

  /// Creates a new [AzureArcSettings].
  /// [azureArcState] AzureArc state indicates whether to include azure arc related costs in on-premises or not.
  /// [laborCostPercentage] Gets Azure arc labour cost percentage.
  /// [managementSettings] Management settings.
  AzureArcSettings({
    required this.azureArcState,
    this.laborCostPercentage,
    this.managementSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureArcState': azureArcState,
      'laborCostPercentage': ?laborCostPercentage,
      'managementSettings': ?managementSettings == null ? null : managementSettings!.toMap(),
    };
  }

  factory AzureArcSettings.fromMap(Map<String, dynamic> map) {
    return AzureArcSettings(
      azureArcState: map['azureArcState'] as String,
      laborCostPercentage: map['laborCostPercentage'] == null ? null : map['laborCostPercentage'] as double,
      managementSettings: map['managementSettings'] == null ? null : AzureArcManagementSettings.fromMap((map['managementSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

