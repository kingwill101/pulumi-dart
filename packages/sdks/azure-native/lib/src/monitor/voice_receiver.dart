// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A voice receiver.
class VoiceReceiver {
  /// The country code of the voice receiver.
  final pulumi.Input<String> countryCode;
  /// The name of the voice receiver. Names must be unique across all receivers within a tenant action group.
  final pulumi.Input<String> name;
  /// The phone number of the voice receiver.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [VoiceReceiver].
  /// [countryCode] The country code of the voice receiver.
  /// [name] The name of the voice receiver. Names must be unique across all receivers within a tenant action group.
  /// [phoneNumber] The phone number of the voice receiver.
  VoiceReceiver({
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

  factory VoiceReceiver.fromMap(Map<String, dynamic> map) {
    return VoiceReceiver(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}

