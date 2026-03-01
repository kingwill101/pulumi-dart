// ignore_for_file: unused_element, unnecessary_cast


/// Support contact information and instructions.
class SupportInfoResponse {
  /// Support contact email address.
  final String? email;
  /// Support instructions.
  final String? instructions;
  /// Support contact phone number.
  final String? phone;
  /// Support web address.
  final String? url;

  /// Creates a new [SupportInfoResponse].
  /// [email] Support contact email address.
  /// [instructions] Support instructions.
  /// [phone] Support contact phone number.
  /// [url] Support web address.
  SupportInfoResponse({
    this.email,
    this.instructions,
    this.phone,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'instructions': ?instructions,
      'phone': ?phone,
      'url': ?url,
    };
  }

  factory SupportInfoResponse.fromMap(Map<String, dynamic> map) {
    return SupportInfoResponse(
      email: map['email'] == null ? null : map['email'] as String,
      instructions: map['instructions'] == null ? null : map['instructions'] as String,
      phone: map['phone'] == null ? null : map['phone'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

