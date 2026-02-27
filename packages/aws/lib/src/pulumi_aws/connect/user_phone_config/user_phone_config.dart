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

  UserPhoneConfig({
    this.afterContactWorkTimeLimit,
    this.autoAccept,
    this.deskPhoneNumber,
    required this.phoneType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final afterContactWorkTimeLimitValue = afterContactWorkTimeLimit;
    if (afterContactWorkTimeLimitValue != null) {
      map['afterContactWorkTimeLimit'] = afterContactWorkTimeLimitValue;
    }
    final autoAcceptValue = autoAccept;
    if (autoAcceptValue != null) {
      map['autoAccept'] = autoAcceptValue;
    }
    final deskPhoneNumberValue = deskPhoneNumber;
    if (deskPhoneNumberValue != null) {
      map['deskPhoneNumber'] = deskPhoneNumberValue;
    }
    map['phoneType'] = phoneType;
    return map;
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
