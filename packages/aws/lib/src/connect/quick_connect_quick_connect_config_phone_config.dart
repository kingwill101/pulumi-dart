// ignore_for_file: unused_element, unnecessary_cast

class QuickConnectQuickConnectConfigPhoneConfig {
  /// Specifies the phone number in in E.164 format.
  final String phoneNumber;

  /// Creates a new [QuickConnectQuickConnectConfigPhoneConfig].
  /// [phoneNumber] Specifies the phone number in in E.164 format.
  QuickConnectQuickConnectConfigPhoneConfig({required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory QuickConnectQuickConnectConfigPhoneConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return QuickConnectQuickConnectConfigPhoneConfig(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
