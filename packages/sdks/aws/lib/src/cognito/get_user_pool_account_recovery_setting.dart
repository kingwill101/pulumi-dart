// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_account_recovery_setting_recovery_mechanism.dart';

class GetUserPoolAccountRecoverySetting {
  final pulumi.Input<List<GetUserPoolAccountRecoverySettingRecoveryMechanism>>
  recoveryMechanisms;

  /// Creates a new [GetUserPoolAccountRecoverySetting].
  /// [recoveryMechanisms] Required.
  GetUserPoolAccountRecoverySetting({required this.recoveryMechanisms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoveryMechanisms':
          pulumi.Input.mapInputValue<
            List<GetUserPoolAccountRecoverySettingRecoveryMechanism>,
            List<Map<String, dynamic>>
          >(
            recoveryMechanisms,
            (value) =>
                pulumi.Input.encodeList<
                  GetUserPoolAccountRecoverySettingRecoveryMechanism,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetUserPoolAccountRecoverySetting.fromMap(Map<String, dynamic> map) {
    return GetUserPoolAccountRecoverySetting(
      recoveryMechanisms: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetUserPoolAccountRecoverySettingRecoveryMechanism
        >(
          map['recoveryMechanisms']!,
          (value) => GetUserPoolAccountRecoverySettingRecoveryMechanism.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
