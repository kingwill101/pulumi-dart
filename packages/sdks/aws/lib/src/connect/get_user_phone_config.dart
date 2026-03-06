// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPhoneConfig {
  /// The After Call Work (ACW) timeout setting, in seconds.
  final pulumi.Input<int> afterContactWorkTimeLimit;
  /// When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically.
  final pulumi.Input<bool> autoAccept;
  /// The phone number for the user's desk phone.
  final pulumi.Input<String> deskPhoneNumber;
  /// The phone type. Valid values are `DESK_PHONE` and `SOFT_PHONE`.
  final pulumi.Input<String> phoneType;

  /// Creates a new [GetUserPhoneConfig].
  /// [afterContactWorkTimeLimit] The After Call Work (ACW) timeout setting, in seconds.
  /// [autoAccept] When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically.
  /// [deskPhoneNumber] The phone number for the user's desk phone.
  /// [phoneType] The phone type. Valid values are `DESK_PHONE` and `SOFT_PHONE`.
  const GetUserPhoneConfig({
    required this.afterContactWorkTimeLimit,
    required this.autoAccept,
    required this.deskPhoneNumber,
    required this.phoneType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterContactWorkTimeLimit': afterContactWorkTimeLimit,
      'autoAccept': autoAccept,
      'deskPhoneNumber': deskPhoneNumber,
      'phoneType': phoneType,
    };
  }

  factory GetUserPhoneConfig.fromMap(Map<String, dynamic> map) {
    return GetUserPhoneConfig(
      afterContactWorkTimeLimit: pulumi.Input.fromValue(map['afterContactWorkTimeLimit'] as int),
      autoAccept: pulumi.Input.fromValue(map['autoAccept'] as bool),
      deskPhoneNumber: pulumi.Input.fromValue(map['deskPhoneNumber'] as String),
      phoneType: pulumi.Input.fromValue(map['phoneType'] as String),
    );
  }
}

