// ignore_for_file: unused_element, unnecessary_cast

import 'aadauthentication_settings.dart';
import 'additional_features_server_configurations.dart';
import 'sql_connectivity_update_settings.dart';
import 'sql_storage_update_settings.dart';
import 'sql_workload_type_update_settings.dart';
import 'sqlinstance_settings.dart';

/// Set the connectivity, storage and workload settings.
class ServerConfigurationsManagementSettings {
  /// Additional SQL feature settings.
  final AdditionalFeaturesServerConfigurations? additionalFeaturesServerConfigurations;
  /// Azure AD authentication Settings.
  final AADAuthenticationSettings? azureAdAuthenticationSettings;
  /// SQL connectivity type settings.
  final SqlConnectivityUpdateSettings? sqlConnectivityUpdateSettings;
  /// SQL Instance settings.
  final SQLInstanceSettings? sqlInstanceSettings;
  /// SQL storage update settings.
  final SqlStorageUpdateSettings? sqlStorageUpdateSettings;
  /// SQL workload type settings.
  final SqlWorkloadTypeUpdateSettings? sqlWorkloadTypeUpdateSettings;

  /// Creates a new [ServerConfigurationsManagementSettings].
  /// [additionalFeaturesServerConfigurations] Additional SQL feature settings.
  /// [azureAdAuthenticationSettings] Azure AD authentication Settings.
  /// [sqlConnectivityUpdateSettings] SQL connectivity type settings.
  /// [sqlInstanceSettings] SQL Instance settings.
  /// [sqlStorageUpdateSettings] SQL storage update settings.
  /// [sqlWorkloadTypeUpdateSettings] SQL workload type settings.
  ServerConfigurationsManagementSettings({
    this.additionalFeaturesServerConfigurations,
    this.azureAdAuthenticationSettings,
    this.sqlConnectivityUpdateSettings,
    this.sqlInstanceSettings,
    this.sqlStorageUpdateSettings,
    this.sqlWorkloadTypeUpdateSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFeaturesServerConfigurations': ?additionalFeaturesServerConfigurations == null ? null : additionalFeaturesServerConfigurations!.toMap(),
      'azureAdAuthenticationSettings': ?azureAdAuthenticationSettings == null ? null : azureAdAuthenticationSettings!.toMap(),
      'sqlConnectivityUpdateSettings': ?sqlConnectivityUpdateSettings == null ? null : sqlConnectivityUpdateSettings!.toMap(),
      'sqlInstanceSettings': ?sqlInstanceSettings == null ? null : sqlInstanceSettings!.toMap(),
      'sqlStorageUpdateSettings': ?sqlStorageUpdateSettings == null ? null : sqlStorageUpdateSettings!.toMap(),
      'sqlWorkloadTypeUpdateSettings': ?sqlWorkloadTypeUpdateSettings == null ? null : sqlWorkloadTypeUpdateSettings!.toMap(),
    };
  }

  factory ServerConfigurationsManagementSettings.fromMap(Map<String, dynamic> map) {
    return ServerConfigurationsManagementSettings(
      additionalFeaturesServerConfigurations: map['additionalFeaturesServerConfigurations'] == null ? null : AdditionalFeaturesServerConfigurations.fromMap((map['additionalFeaturesServerConfigurations'] as Map).cast<String, dynamic>()),
      azureAdAuthenticationSettings: map['azureAdAuthenticationSettings'] == null ? null : AADAuthenticationSettings.fromMap((map['azureAdAuthenticationSettings'] as Map).cast<String, dynamic>()),
      sqlConnectivityUpdateSettings: map['sqlConnectivityUpdateSettings'] == null ? null : SqlConnectivityUpdateSettings.fromMap((map['sqlConnectivityUpdateSettings'] as Map).cast<String, dynamic>()),
      sqlInstanceSettings: map['sqlInstanceSettings'] == null ? null : SQLInstanceSettings.fromMap((map['sqlInstanceSettings'] as Map).cast<String, dynamic>()),
      sqlStorageUpdateSettings: map['sqlStorageUpdateSettings'] == null ? null : SqlStorageUpdateSettings.fromMap((map['sqlStorageUpdateSettings'] as Map).cast<String, dynamic>()),
      sqlWorkloadTypeUpdateSettings: map['sqlWorkloadTypeUpdateSettings'] == null ? null : SqlWorkloadTypeUpdateSettings.fromMap((map['sqlWorkloadTypeUpdateSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

