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
  SupportInfo({this.email, this.instructions, this.phone, this.url});

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
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instructions: (() {
        final guardedValue = map['instructions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phone: (() {
        final guardedValue = map['phone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
