// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secrets_management_settings_response.dart';

/// The OS profile of the machines in the pool.
class OsProfileResponse {
  /// Determines how the service should be run. By default, this will be set to Service.
  final pulumi.Input<String>? logonType;
  /// The secret management settings of the machines in the pool.
  final pulumi.Input<SecretsManagementSettingsResponse>? secretsManagementSettings;

  /// Creates a new [OsProfileResponse].
  /// [logonType] Determines how the service should be run. By default, this will be set to Service.
  /// [secretsManagementSettings] The secret management settings of the machines in the pool.
  const OsProfileResponse({
    this.logonType,
    this.secretsManagementSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logonType': ?logonType,
      'secretsManagementSettings': ?pulumi.Input.mapOptionalInputValue<SecretsManagementSettingsResponse, Map<String, dynamic>>(secretsManagementSettings, (value) => value.toMap()),
    };
  }

  factory OsProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProfileResponse(
      logonType: (() { final guardedValue = map['logonType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagementSettings: (() { final guardedValue = map['secretsManagementSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretsManagementSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
