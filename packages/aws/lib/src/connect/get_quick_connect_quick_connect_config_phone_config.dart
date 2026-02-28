// ignore_for_file: unused_element, unnecessary_cast

class GetQuickConnectQuickConnectConfigPhoneConfig {
  /// Phone number in in E.164 format.
  final String phoneNumber;

  /// Creates a new [GetQuickConnectQuickConnectConfigPhoneConfig].
  /// [phoneNumber] Phone number in in E.164 format.
  GetQuickConnectQuickConnectConfigPhoneConfig({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['phoneNumber'] = phoneNumber;
    return map;
  }

  factory GetQuickConnectQuickConnectConfigPhoneConfig.fromMap(
      Map<String, dynamic> map) {
    return GetQuickConnectQuickConnectConfigPhoneConfig(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
