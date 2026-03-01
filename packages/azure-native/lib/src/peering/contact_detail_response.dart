// ignore_for_file: unused_element, unnecessary_cast


/// The contact detail class.
class ContactDetailResponse {
  /// The e-mail address of the contact.
  final String? email;
  /// The phone number of the contact.
  final String? phone;
  /// The role of the contact.
  final String? role;

  /// Creates a new [ContactDetailResponse].
  /// [email] The e-mail address of the contact.
  /// [phone] The phone number of the contact.
  /// [role] The role of the contact.
  ContactDetailResponse({
    this.email,
    this.phone,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'phone': ?phone,
      'role': ?role,
    };
  }

  factory ContactDetailResponse.fromMap(Map<String, dynamic> map) {
    return ContactDetailResponse(
      email: map['email'] == null ? null : map['email'] as String,
      phone: map['phone'] == null ? null : map['phone'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

