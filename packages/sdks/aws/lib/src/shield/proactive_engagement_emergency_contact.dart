// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProactiveEngagementEmergencyContact {
  /// Additional notes regarding the contact.
  final pulumi.Input<String>? contactNotes;
  /// A valid email address that will be used for this contact.
  final pulumi.Input<String> emailAddress;
  /// A phone number, starting with `+` and up to 15 digits that will be used for this contact.
  final pulumi.Input<String>? phoneNumber;

  /// Creates a new [ProactiveEngagementEmergencyContact].
  /// [contactNotes] Additional notes regarding the contact.
  /// [emailAddress] A valid email address that will be used for this contact.
  /// [phoneNumber] A phone number, starting with `+` and up to 15 digits that will be used for this contact.
  const ProactiveEngagementEmergencyContact({
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
      contactNotes: (() { final guardedValue = map['contactNotes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
