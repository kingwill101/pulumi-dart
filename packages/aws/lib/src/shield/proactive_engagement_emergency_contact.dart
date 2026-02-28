// ignore_for_file: unused_element, unnecessary_cast


class ProactiveEngagementEmergencyContact {
  /// Additional notes regarding the contact.
  final String? contactNotes;
  /// A valid email address that will be used for this contact.
  final String emailAddress;
  /// A phone number, starting with `+` and up to 15 digits that will be used for this contact.
  final String? phoneNumber;

  /// Creates a new [ProactiveEngagementEmergencyContact].
  /// [contactNotes] Additional notes regarding the contact.
  /// [emailAddress] A valid email address that will be used for this contact.
  /// [phoneNumber] A phone number, starting with `+` and up to 15 digits that will be used for this contact.
  ProactiveEngagementEmergencyContact({
    this.contactNotes,
    required this.emailAddress,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactNotes': ?contactNotes,
      'emailAddress': emailAddress,
      'phoneNumber': ?phoneNumber,
    };
  }

  factory ProactiveEngagementEmergencyContact.fromMap(Map<String, dynamic> map) {
    return ProactiveEngagementEmergencyContact(
      contactNotes: map['contactNotes'] == null ? null : map['contactNotes'] as String,
      emailAddress: map['emailAddress'] as String,
      phoneNumber: map['phoneNumber'] == null ? null : map['phoneNumber'] as String,
    );
  }
}

