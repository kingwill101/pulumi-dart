// ignore_for_file: unused_element, unnecessary_cast


/// An SMS receiver.
class SmsReceiver {
  /// The country code of the SMS receiver.
  final String countryCode;
  /// The name of the SMS receiver. Names must be unique across all receivers within a tenant action group.
  final String name;
  /// The phone number of the SMS receiver.
  final String phoneNumber;

  /// Creates a new [SmsReceiver].
  /// [countryCode] The country code of the SMS receiver.
  /// [name] The name of the SMS receiver. Names must be unique across all receivers within a tenant action group.
  /// [phoneNumber] The phone number of the SMS receiver.
  SmsReceiver({
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
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

