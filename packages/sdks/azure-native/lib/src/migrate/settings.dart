// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_settings.dart';
import 'azure_settings.dart';
import 'on_premise_settings.dart';

/// Business case settings.
class Settings {
  /// Azure arc settings.
  final AzureArcSettings? azureArcSettings;
  /// Azure settings for a business case.
  final AzureSettings azureSettings;
  /// On-premise settings.
  final OnPremiseSettings? onPremiseSettings;

  /// Creates a new [Settings].
  /// [azureArcSettings] Azure arc settings.
  /// [azureSettings] Azure settings for a business case.
  /// [onPremiseSettings] On-premise settings.
  Settings({
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

  factory Settings.fromMap(Map<String, dynamic> map) {
    return Settings(
      azureArcSettings: map['azureArcSettings'] == null ? null : AzureArcSettings.fromMap((map['azureArcSettings'] as Map).cast<String, dynamic>()),
      azureSettings: AzureSettings.fromMap((map['azureSettings'] as Map).cast<String, dynamic>()),
      onPremiseSettings: map['onPremiseSettings'] == null ? null : OnPremiseSettings.fromMap((map['onPremiseSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

