// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Support contact information and instructions.
class SupportInfoResponse {
  /// Support contact email address.
  final pulumi.Input<String?>? email;
  /// Support instructions.
  final pulumi.Input<String?>? instructions;
  /// Support contact phone number.
  final pulumi.Input<String?>? phone;
  /// Support web address.
  final pulumi.Input<String?>? url;

  /// Creates a new [SupportInfoResponse].
  /// [email] Support contact email address.
  /// [instructions] Support instructions.
  /// [phone] Support contact phone number.
  /// [url] Support web address.
  const SupportInfoResponse({
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
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
