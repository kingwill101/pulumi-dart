// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_user_pool_account_recovery_setting_recovery_mechanism/get_user_pool_account_recovery_setting_recovery_mechanism.dart';

class GetUserPoolAccountRecoverySetting {
  final List<GetUserPoolAccountRecoverySettingRecoveryMechanism>
      recoveryMechanisms;

  GetUserPoolAccountRecoverySetting({
    required this.recoveryMechanisms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recoveryMechanisms'] = Input.encodeList<
        GetUserPoolAccountRecoverySettingRecoveryMechanism,
        Map<String, dynamic>>(recoveryMechanisms, (value) => value.toMap());
    return map;
  }

  factory GetUserPoolAccountRecoverySetting.fromMap(Map<String, dynamic> map) {
    return GetUserPoolAccountRecoverySetting(
      recoveryMechanisms:
          Input.decodeList<GetUserPoolAccountRecoverySettingRecoveryMechanism>(
              map['recoveryMechanisms'],
              (value) =>
                  GetUserPoolAccountRecoverySettingRecoveryMechanism.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
