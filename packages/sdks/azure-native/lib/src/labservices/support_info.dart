// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Support contact information and instructions.
class SupportInfo {
  /// Support contact email address.
  final pulumi.Input<String>? email;
  /// Support instructions.
  final pulumi.Input<String>? instructions;
  /// Support contact phone number.
  final pulumi.Input<String>? phone;
  /// Support web address.
  final pulumi.Input<String>? url;

  /// Creates a new [SupportInfo].
  /// [email] Support contact email address.
  /// [instructions] Support instructions.
  /// [phone] Support contact phone number.
  /// [url] Support web address.
  SupportInfo({
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

  factory SupportInfo.fromMap(Map<String, dynamic> map) {
    return SupportInfo(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      instructions: map['instructions'] == null ? null : (map['instructions'] as String).input(),
      phone: map['phone'] == null ? null : (map['phone'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

