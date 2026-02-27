// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_pool_account_recovery_setting_recovery_mechanism/user_pool_account_recovery_setting_recovery_mechanism.dart';

class UserPoolAccountRecoverySetting {
  /// List of Account Recovery Options of the following structure:
  final List<UserPoolAccountRecoverySettingRecoveryMechanism>?
      recoveryMechanisms;

  UserPoolAccountRecoverySetting({
    this.recoveryMechanisms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final recoveryMechanismsValue = recoveryMechanisms;
    if (recoveryMechanismsValue != null) {
      map['recoveryMechanisms'] = pulumi.Input.encodeList<
              UserPoolAccountRecoverySettingRecoveryMechanism,
              Map<String, dynamic>>(
          recoveryMechanismsValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserPoolAccountRecoverySetting.fromMap(Map<String, dynamic> map) {
    return UserPoolAccountRecoverySetting(
      recoveryMechanisms: map['recoveryMechanisms'] == null
          ? null
          : pulumi.Input.decodeList<
                  UserPoolAccountRecoverySettingRecoveryMechanism>(
              map['recoveryMechanisms'],
              (value) =>
                  UserPoolAccountRecoverySettingRecoveryMechanism.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
