// ignore_for_file: unused_element, unnecessary_cast

/// Contact information for a customer account.
class GoogleCloudChannelV1ContactInfo {
  /// The customer account's contact email. Required for entitlements that create admin.google.com accounts, and serves as the customer's username for those accounts. Use this email to invite Team customers.
  final String? email;

  /// The customer account contact's first name. Optional for Team customers.
  final String? firstName;

  /// The customer account contact's last name. Optional for Team customers.
  final String? lastName;

  /// The customer account's contact phone number.
  final String? phone;

  /// Optional. The customer account contact's job title.
  final String? title;

  GoogleCloudChannelV1ContactInfo({
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final firstNameValue = firstName;
    if (firstNameValue != null) {
      map['firstName'] = firstNameValue;
    }
    final lastNameValue = lastName;
    if (lastNameValue != null) {
      map['lastName'] = lastNameValue;
    }
    final phoneValue = phone;
    if (phoneValue != null) {
      map['phone'] = phoneValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory GoogleCloudChannelV1ContactInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1ContactInfo(
      email: map['email'] == null ? null : map['email'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      phone: map['phone'] == null ? null : map['phone'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
