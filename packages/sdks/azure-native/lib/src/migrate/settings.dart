// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_settings.dart';
import 'azure_settings.dart';
import 'on_premise_settings.dart';

/// Business case settings.
class Settings {
  /// Azure arc settings.
  final pulumi.Input<AzureArcSettings>? azureArcSettings;
  /// Azure settings for a business case.
  final pulumi.Input<AzureSettings> azureSettings;
  /// On-premise settings.
  final pulumi.Input<OnPremiseSettings>? onPremiseSettings;

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
      'azureArcSettings': ?pulumi.Input.mapOptionalInputValue<AzureArcSettings, Map<String, dynamic>>(azureArcSettings, (value) => value.toMap()),
      'azureSettings': pulumi.Input.mapInputValue<AzureSettings, Map<String, dynamic>>(azureSettings, (value) => value.toMap()),
      'onPremiseSettings': ?pulumi.Input.mapOptionalInputValue<OnPremiseSettings, Map<String, dynamic>>(onPremiseSettings, (value) => value.toMap()),
    };
  }

  factory Settings.fromMap(Map<String, dynamic> map) {
    return Settings(
      azureArcSettings: map['azureArcSettings'] == null ? null : (AzureArcSettings.fromMap((map['azureArcSettings'] as Map).cast<String, dynamic>())).input(),
      azureSettings: (AzureSettings.fromMap((map['azureSettings'] as Map).cast<String, dynamic>())).input(),
      onPremiseSettings: map['onPremiseSettings'] == null ? null : (OnPremiseSettings.fromMap((map['onPremiseSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

