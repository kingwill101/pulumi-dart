// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secrets_management_settings.dart';

/// The OS profile of the machines in the pool.
class OsProfile {
  /// Determines how the service should be run. By default, this will be set to Service.
  final pulumi.Input<String>? logonType;
  /// The secret management settings of the machines in the pool.
  final pulumi.Input<SecretsManagementSettings>? secretsManagementSettings;

  /// Creates a new [OsProfile].
  /// [logonType] Determines how the service should be run. By default, this will be set to Service.
  /// [secretsManagementSettings] The secret management settings of the machines in the pool.
  OsProfile({
    this.logonType,
    this.secretsManagementSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logonType': ?logonType,
      'secretsManagementSettings': ?pulumi.Input.mapOptionalInputValue<SecretsManagementSettings, Map<String, dynamic>>(secretsManagementSettings, (value) => value.toMap()),
    };
  }

  factory OsProfile.fromMap(Map<String, dynamic> map) {
    return OsProfile(
      logonType: (() { final guardedValue = map['logonType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagementSettings: (() { final guardedValue = map['secretsManagementSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretsManagementSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

