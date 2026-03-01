// ignore_for_file: unused_element, unnecessary_cast


/// A voice receiver.
class VoiceReceiver {
  /// The country code of the voice receiver.
  final String countryCode;
  /// The name of the voice receiver. Names must be unique across all receivers within a tenant action group.
  final String name;
  /// The phone number of the voice receiver.
  final String phoneNumber;

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
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

