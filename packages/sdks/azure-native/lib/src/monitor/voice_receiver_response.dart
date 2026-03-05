// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A voice receiver.
class VoiceReceiverResponse {
  /// The country code of the voice receiver.
  final pulumi.Input<String> countryCode;
  /// The name of the voice receiver. Names must be unique across all receivers within a tenant action group.
  final pulumi.Input<String> name;
  /// The phone number of the voice receiver.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [VoiceReceiverResponse].
  /// [countryCode] The country code of the voice receiver.
  /// [name] The name of the voice receiver. Names must be unique across all receivers within a tenant action group.
  /// [phoneNumber] The phone number of the voice receiver.
  VoiceReceiverResponse({
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

  factory VoiceReceiverResponse.fromMap(Map<String, dynamic> map) {
    return VoiceReceiverResponse(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}

