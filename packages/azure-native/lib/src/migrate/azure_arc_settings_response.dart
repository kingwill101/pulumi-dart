// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_management_settings_response.dart';

/// Azure arc settings for a business case.
class AzureArcSettingsResponse {
  /// AzureArc state indicates whether to include azure arc related costs in on-premises or not.
  final String azureArcState;
  /// Gets Azure arc labour cost percentage.
  final double? laborCostPercentage;
  /// Management settings.
  final AzureArcManagementSettingsResponse? managementSettings;

  /// Creates a new [AzureArcSettingsResponse].
  /// [azureArcState] AzureArc state indicates whether to include azure arc related costs in on-premises or not.
  /// [laborCostPercentage] Gets Azure arc labour cost percentage.
  /// [managementSettings] Management settings.
  AzureArcSettingsResponse({
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

  factory AzureArcSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcSettingsResponse(
      azureArcState: map['azureArcState'] as String,
      laborCostPercentage: map['laborCostPercentage'] == null ? null : map['laborCostPercentage'] as double,
      managementSettings: map['managementSettings'] == null ? null : AzureArcManagementSettingsResponse.fromMap((map['managementSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

