// ignore_for_file: unused_element, unnecessary_cast

class UserPhoneConfig {
  /// The After Call Work (ACW) timeout setting, in seconds. Minimum value of 0.
  final int? afterContactWorkTimeLimit;

  /// When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically.
  final bool? autoAccept;

  /// The phone number for the user's desk phone. Required if `phone_type` is set as `DESK_PHONE`.
  final String? deskPhoneNumber;

  /// The phone type. Valid values are `DESK_PHONE` and `SOFT_PHONE`.
  final String phoneType;

  /// Creates a new [UserPhoneConfig].
  /// [afterContactWorkTimeLimit] The After Call Work (ACW) timeout setting, in seconds. Minimum value of 0.
  /// [autoAccept] When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically.
  /// [deskPhoneNumber] The phone number for the user's desk phone. Required if `phone_type` is set as `DESK_PHONE`.
  /// [phoneType] The phone type. Valid values are `DESK_PHONE` and `SOFT_PHONE`.
  UserPhoneConfig({
    this.afterContactWorkTimeLimit,
    this.autoAccept,
    this.deskPhoneNumber,
    required this.phoneType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'afterContactWorkTimeLimit': ?afterContactWorkTimeLimit,
      'autoAccept': ?autoAccept,
      'deskPhoneNumber': ?deskPhoneNumber,
      'phoneType': phoneType,
    };
  }

  factory UserPhoneConfig.fromMap(Map<String, dynamic> map) {
    return UserPhoneConfig(
      afterContactWorkTimeLimit: map['afterContactWorkTimeLimit'] == null
          ? null
          : map['afterContactWorkTimeLimit'] as int,
      autoAccept: map['autoAccept'] == null ? null : map['autoAccept'] as bool,
      deskPhoneNumber: map['deskPhoneNumber'] == null
          ? null
          : map['deskPhoneNumber'] as String,
      phoneType: map['phoneType'] as String,
    );
  }
}
