// ignore_for_file: unused_element, unnecessary_cast

import 'secrets_management_settings_response.dart';

/// The OS profile of the machines in the pool.
class OsProfileResponse {
  /// Determines how the service should be run. By default, this will be set to Service.
  final String? logonType;
  /// The secret management settings of the machines in the pool.
  final SecretsManagementSettingsResponse? secretsManagementSettings;

  /// Creates a new [OsProfileResponse].
  /// [logonType] Determines how the service should be run. By default, this will be set to Service.
  /// [secretsManagementSettings] The secret management settings of the machines in the pool.
  OsProfileResponse({
    this.logonType,
    this.secretsManagementSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logonType': ?logonType,
      'secretsManagementSettings': ?secretsManagementSettings == null ? null : secretsManagementSettings!.toMap(),
    };
  }

  factory OsProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileResponse(
      logonType: map['logonType'] == null ? null : map['logonType'] as String,
      secretsManagementSettings: map['secretsManagementSettings'] == null ? null : SecretsManagementSettingsResponse.fromMap((map['secretsManagementSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

