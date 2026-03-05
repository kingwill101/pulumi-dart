// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuickConnectQuickConnectConfigPhoneConfig {
  /// Specifies the phone number in in E.164 format.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [QuickConnectQuickConnectConfigPhoneConfig].
  /// [phoneNumber] Specifies the phone number in in E.164 format.
  QuickConnectQuickConnectConfigPhoneConfig({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory QuickConnectQuickConnectConfigPhoneConfig.fromMap(Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfigPhoneConfig(
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}

