// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupSmsReceiver {
  /// The country code of the voice receiver.
  final String countryCode;
  /// Specifies the name of the Action Group.
  final String name;
  /// The phone number of the voice receiver.
  final String phoneNumber;

  /// Creates a new [GetActionGroupSmsReceiver].
  /// [countryCode] The country code of the voice receiver.
  /// [name] Specifies the name of the Action Group.
  /// [phoneNumber] The phone number of the voice receiver.
  GetActionGroupSmsReceiver({
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

  factory GetActionGroupSmsReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupSmsReceiver(
      countryCode: map['countryCode'] as String,
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

