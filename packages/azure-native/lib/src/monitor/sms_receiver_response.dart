// ignore_for_file: unused_element, unnecessary_cast


/// An SMS receiver.
class SmsReceiverResponse {
  /// The country code of the SMS receiver.
  final String countryCode;
  /// The name of the SMS receiver. Names must be unique across all receivers within a tenant action group.
  final String name;
  /// The phone number of the SMS receiver.
  final String phoneNumber;
  /// The status of the receiver.
  final String status;

  /// Creates a new [SmsReceiverResponse].
  /// [countryCode] The country code of the SMS receiver.
  /// [name] The name of the SMS receiver. Names must be unique across all receivers within a tenant action group.
  /// [phoneNumber] The phone number of the SMS receiver.
  /// [status] The status of the receiver.
  SmsReceiverResponse({
    required this.countryCode,
    required this.name,
    required this.phoneNumber,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
      'name': name,
      'phoneNumber': phoneNumber,
      'status': status,
    };
  }

  factory SmsReceiverResponse.fromMap(Map<String, dynamic> map) {
    return SmsReceiverResponse(
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      status: map['status'] as String,
    );
  }
}

