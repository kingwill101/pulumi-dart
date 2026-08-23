// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_account_recovery_setting_recovery_mechanism.dart';

class UserPoolAccountRecoverySetting {
  /// List of Account Recovery Options of the following structure:
  final pulumi.Input<List<UserPoolAccountRecoverySettingRecoveryMechanism>>? recoveryMechanisms;

  /// Creates a new [UserPoolAccountRecoverySetting].
  /// [recoveryMechanisms] List of Account Recovery Options of the following structure:
  const UserPoolAccountRecoverySetting({
    this.recoveryMechanisms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoveryMechanisms': ?pulumi.Input.mapOptionalInputValue<List<UserPoolAccountRecoverySettingRecoveryMechanism>, List<Map<String, dynamic>>>(recoveryMechanisms, (value) => pulumi.Input.encodeList<UserPoolAccountRecoverySettingRecoveryMechanism, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserPoolAccountRecoverySetting.fromMap(Map<String, dynamic> map) {
    return UserPoolAccountRecoverySetting(
      recoveryMechanisms: (() { final guardedValue = map['recoveryMechanisms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPoolAccountRecoverySettingRecoveryMechanism>(guardedValue, (value) => UserPoolAccountRecoverySettingRecoveryMechanism.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
