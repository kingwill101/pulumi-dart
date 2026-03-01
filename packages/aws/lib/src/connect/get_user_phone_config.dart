// ignore_for_file: unused_element, unnecessary_cast

class GetUserPhoneConfig {
  /// The After Call Work (ACW) timeout setting, in seconds.
  final int afterContactWorkTimeLimit;

  /// When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically.
  final bool autoAccept;

  /// The phone number for the user's desk phone.
  final String deskPhoneNumber;

  /// The phone type. Valid values are `DESK_PHONE` and `SOFT_PHONE`.
  final String phoneType;

  /// Creates a new [GetUserPhoneConfig].
  /// [afterContactWorkTimeLimit] The After Call Work (ACW) timeout setting, in seconds.
  /// [autoAccept] When Auto-Accept Call is enabled for an available agent, the agent connects to contacts automatically.
  /// [deskPhoneNumber] The phone number for the user's desk phone.
  /// [phoneType] The phone type. Valid values are `DESK_PHONE` and `SOFT_PHONE`.
  GetUserPhoneConfig({
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
      afterContactWorkTimeLimit: map['afterContactWorkTimeLimit'] as int,
      autoAccept: map['autoAccept'] as bool,
      deskPhoneNumber: map['deskPhoneNumber'] as String,
      phoneType: map['phoneType'] as String,
    );
  }
}
