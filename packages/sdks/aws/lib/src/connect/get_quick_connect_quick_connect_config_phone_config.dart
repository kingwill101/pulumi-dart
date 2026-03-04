// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuickConnectQuickConnectConfigPhoneConfig {
  /// Phone number in in E.164 format.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [GetQuickConnectQuickConnectConfigPhoneConfig].
  /// [phoneNumber] Phone number in in E.164 format.
  GetQuickConnectQuickConnectConfigPhoneConfig({required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory GetQuickConnectQuickConnectConfigPhoneConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetQuickConnectQuickConnectConfigPhoneConfig(
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}
