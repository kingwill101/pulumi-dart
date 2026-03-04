// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_management_settings.dart';

/// Azure arc settings for a business case.
class AzureArcSettings {
  /// AzureArc state indicates whether to include azure arc related costs in on-premises or not.
  final pulumi.Input<String> azureArcState;

  /// Gets Azure arc labour cost percentage.
  final pulumi.Input<double>? laborCostPercentage;

  /// Management settings.
  final pulumi.Input<AzureArcManagementSettings>? managementSettings;

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
      'managementSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AzureArcManagementSettings,
            Map<String, dynamic>
          >(managementSettings, (value) => value.toMap()),
    };
  }

  factory AzureArcSettings.fromMap(Map<String, dynamic> map) {
    return AzureArcSettings(
      azureArcState: pulumi.Input.fromValue(map['azureArcState'] as String),
      laborCostPercentage: (() {
        final guardedValue = map['laborCostPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      managementSettings: (() {
        final guardedValue = map['managementSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureArcManagementSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
