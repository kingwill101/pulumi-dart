// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contact information
class ContactResponse {
  /// Email address of the contact.
  final pulumi.Input<String>? email;
  /// Name of the contact.
  final pulumi.Input<String>? name;
  /// URL for the contact.
  final pulumi.Input<String>? url;

  /// Creates a new [ContactResponse].
  /// [email] Email address of the contact.
  /// [name] Name of the contact.
  /// [url] URL for the contact.
  const ContactResponse({
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
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

