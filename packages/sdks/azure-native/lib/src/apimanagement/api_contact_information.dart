// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API contact information
class ApiContactInformation {
  /// The email address of the contact person/organization. MUST be in the format of an email address
  final pulumi.Input<String>? email;
  /// The identifying name of the contact person/organization
  final pulumi.Input<String>? name;
  /// The URL pointing to the contact information. MUST be in the format of a URL
  final pulumi.Input<String>? url;

  /// Creates a new [ApiContactInformation].
  /// [email] The email address of the contact person/organization. MUST be in the format of an email address
  /// [name] The identifying name of the contact person/organization
  /// [url] The URL pointing to the contact information. MUST be in the format of a URL
  ApiContactInformation({
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

  factory ApiContactInformation.fromMap(Map<String, dynamic> map) {
    return ApiContactInformation(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

