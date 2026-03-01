// ignore_for_file: unused_element, unnecessary_cast

import 'integration_runtime_ssis_express_custom_setup_command_key_key_vault_password.dart';

class IntegrationRuntimeSsisExpressCustomSetupCommandKey {
  /// A `key_vault_secret_reference` block as defined below.
  final IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword? keyVaultPassword;
  /// The password for the target device.
  final String? password;
  /// The target computer or domain name.
  final String targetName;
  /// The username for the target device.
  final String userName;

  /// Creates a new [IntegrationRuntimeSsisExpressCustomSetupCommandKey].
  /// [keyVaultPassword] A `key_vault_secret_reference` block as defined below.
  /// [password] The password for the target device.
  /// [targetName] The target computer or domain name.
  /// [userName] The username for the target device.
  IntegrationRuntimeSsisExpressCustomSetupCommandKey({
    this.keyVaultPassword,
    this.password,
    required this.targetName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultPassword': ?keyVaultPassword == null ? null : keyVaultPassword!.toMap(),
      'password': ?password,
      'targetName': targetName,
      'userName': userName,
    };
  }

  factory IntegrationRuntimeSsisExpressCustomSetupCommandKey.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressCustomSetupCommandKey(
      keyVaultPassword: map['keyVaultPassword'] == null ? null : IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword.fromMap((map['keyVaultPassword'] as Map).cast<String, dynamic>()),
      password: map['password'] == null ? null : map['password'] as String,
      targetName: map['targetName'] as String,
      userName: map['userName'] as String,
    );
  }
}

