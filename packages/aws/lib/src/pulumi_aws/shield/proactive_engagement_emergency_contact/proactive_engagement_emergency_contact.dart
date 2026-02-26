// ignore_for_file: unused_element, unnecessary_cast

class ProactiveEngagementEmergencyContact {
  /// Additional notes regarding the contact.
  final String? contactNotes;

  /// A valid email address that will be used for this contact.
  final String emailAddress;

  /// A phone number, starting with `+` and up to 15 digits that will be used for this contact.
  final String? phoneNumber;

  ProactiveEngagementEmergencyContact({
    this.contactNotes,
    required this.emailAddress,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contactNotesValue = contactNotes;
    if (contactNotesValue != null) {
      map['contactNotes'] = contactNotesValue;
    }
    map['emailAddress'] = emailAddress;
    final phoneNumberValue = phoneNumber;
    if (phoneNumberValue != null) {
      map['phoneNumber'] = phoneNumberValue;
    }
    return map;
  }

  factory ProactiveEngagementEmergencyContact.fromMap(
      Map<String, dynamic> map) {
    return ProactiveEngagementEmergencyContact(
      contactNotes:
          map['contactNotes'] == null ? null : map['contactNotes'] as String,
      emailAddress: map['emailAddress'] as String,
      phoneNumber:
          map['phoneNumber'] == null ? null : map['phoneNumber'] as String,
    );
  }
}
