// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_settings_response.dart';
import 'azure_settings_response.dart';
import 'on_premise_settings_response.dart';

/// Business case settings.
class SettingsResponse {
  /// Azure arc settings.
  final pulumi.Input<AzureArcSettingsResponse>? azureArcSettings;
  /// Azure settings for a business case.
  final pulumi.Input<AzureSettingsResponse> azureSettings;
  /// On-premise settings.
  final pulumi.Input<OnPremiseSettingsResponse>? onPremiseSettings;

  /// Creates a new [SettingsResponse].
  /// [azureArcSettings] Azure arc settings.
  /// [azureSettings] Azure settings for a business case.
  /// [onPremiseSettings] On-premise settings.
  const SettingsResponse({
    this.azureArcSettings,
    required this.azureSettings,
    this.onPremiseSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureArcSettings': ?pulumi.Input.mapOptionalInputValue<AzureArcSettingsResponse, Map<String, dynamic>>(azureArcSettings, (value) => value.toMap()),
      'azureSettings': pulumi.Input.mapInputValue<AzureSettingsResponse, Map<String, dynamic>>(azureSettings, (value) => value.toMap()),
      'onPremiseSettings': ?pulumi.Input.mapOptionalInputValue<OnPremiseSettingsResponse, Map<String, dynamic>>(onPremiseSettings, (value) => value.toMap()),
    };
  }

  factory SettingsResponse.fromMap(Map<String, dynamic> map) {
    return SettingsResponse(
      azureArcSettings: (() { final guardedValue = map['azureArcSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureArcSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSettings: pulumi.Input.fromValue(AzureSettingsResponse.fromMap((map['azureSettings']! as Map).cast<String, dynamic>())),
      onPremiseSettings: (() { final guardedValue = map['onPremiseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnPremiseSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
