// ignore_for_file: unused_element, unnecessary_cast

/// Contact information for a customer account.
class GoogleCloudChannelV1ContactInfoResponse {
  /// The customer account contact's display name, formatted as a combination of the customer's first and last name.
  final String displayName;

  /// The customer account's contact email. Required for entitlements that create admin.google.com accounts, and serves as the customer's username for those accounts. Use this email to invite Team customers.
  final String email;

  /// The customer account contact's first name. Optional for Team customers.
  final String firstName;

  /// The customer account contact's last name. Optional for Team customers.
  final String lastName;

  /// The customer account's contact phone number.
  final String phone;

  /// Optional. The customer account contact's job title.
  final String title;

  GoogleCloudChannelV1ContactInfoResponse({
    required this.displayName,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['email'] = email;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['phone'] = phone;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudChannelV1ContactInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1ContactInfoResponse(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      phone: map['phone'] as String,
      title: map['title'] as String,
    );
  }
}
