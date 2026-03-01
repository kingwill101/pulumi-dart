// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_settings_response.dart';
import 'azure_settings_response.dart';
import 'on_premise_settings_response.dart';

/// Business case settings.
class SettingsResponse {
  /// Azure arc settings.
  final AzureArcSettingsResponse? azureArcSettings;
  /// Azure settings for a business case.
  final AzureSettingsResponse azureSettings;
  /// On-premise settings.
  final OnPremiseSettingsResponse? onPremiseSettings;

  /// Creates a new [SettingsResponse].
  /// [azureArcSettings] Azure arc settings.
  /// [azureSettings] Azure settings for a business case.
  /// [onPremiseSettings] On-premise settings.
  SettingsResponse({
    this.azureArcSettings,
    required this.azureSettings,
    this.onPremiseSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureArcSettings': ?azureArcSettings == null ? null : azureArcSettings!.toMap(),
      'azureSettings': azureSettings.toMap(),
      'onPremiseSettings': ?onPremiseSettings == null ? null : onPremiseSettings!.toMap(),
    };
  }

  factory SettingsResponse.fromMap(Map<String, dynamic> map) {
    return SettingsResponse(
      azureArcSettings: map['azureArcSettings'] == null ? null : AzureArcSettingsResponse.fromMap((map['azureArcSettings'] as Map).cast<String, dynamic>()),
      azureSettings: AzureSettingsResponse.fromMap((map['azureSettings'] as Map).cast<String, dynamic>()),
      onPremiseSettings: map['onPremiseSettings'] == null ? null : OnPremiseSettingsResponse.fromMap((map['onPremiseSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

