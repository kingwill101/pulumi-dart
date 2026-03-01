// ignore_for_file: unused_element, unnecessary_cast


/// Contact information
class ContactResponse {
  /// Email address of the contact.
  final String? email;
  /// Name of the contact.
  final String? name;
  /// URL for the contact.
  final String? url;

  /// Creates a new [ContactResponse].
  /// [email] Email address of the contact.
  /// [name] Name of the contact.
  /// [url] URL for the contact.
  ContactResponse({
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

  factory ContactResponse.fromMap(Map<String, dynamic> map) {
    return ContactResponse(
      email: map['email'] == null ? null : map['email'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

