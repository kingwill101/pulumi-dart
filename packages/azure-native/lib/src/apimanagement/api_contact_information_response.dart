// ignore_for_file: unused_element, unnecessary_cast


/// API contact information
class ApiContactInformationResponse {
  /// The email address of the contact person/organization. MUST be in the format of an email address
  final String? email;
  /// The identifying name of the contact person/organization
  final String? name;
  /// The URL pointing to the contact information. MUST be in the format of a URL
  final String? url;

  /// Creates a new [ApiContactInformationResponse].
  /// [email] The email address of the contact person/organization. MUST be in the format of an email address
  /// [name] The identifying name of the contact person/organization
  /// [url] The URL pointing to the contact information. MUST be in the format of a URL
  ApiContactInformationResponse({
    this.email,
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'name': ?name,
      'url': ?url,
    };
  }

  factory ApiContactInformationResponse.fromMap(Map<String, dynamic> map) {
    return ApiContactInformationResponse(
      email: map['email'] == null ? null : map['email'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

