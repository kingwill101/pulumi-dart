// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An SMS receiver.
class SmsReceiver {
  /// The country code of the SMS receiver.
  final pulumi.Input<String> countryCode;
  /// The name of the SMS receiver. Names must be unique across all receivers within a tenant action group.
  final pulumi.Input<String> name;
  /// The phone number of the SMS receiver.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [SmsReceiver].
  /// [countryCode] The country code of the SMS receiver.
  /// [name] The name of the SMS receiver. Names must be unique across all receivers within a tenant action group.
  /// [phoneNumber] The phone number of the SMS receiver.
  const SmsReceiver({
    required this.countryCode,
    required this.name,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  factory SmsReceiver.fromMap(Map<String, dynamic> map) {
    return SmsReceiver(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}

