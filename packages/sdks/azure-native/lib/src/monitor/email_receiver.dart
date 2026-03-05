// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An email receiver.
class EmailReceiver {
  /// The email address of this receiver.
  final pulumi.Input<String> emailAddress;
  /// The name of the email receiver. Names must be unique across all receivers within a tenant action group.
  final pulumi.Input<String> name;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [EmailReceiver].
  /// [emailAddress] The email address of this receiver.
  /// [name] The name of the email receiver. Names must be unique across all receivers within a tenant action group.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  EmailReceiver({
    required this.emailAddress,
    required this.name,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory EmailReceiver.fromMap(Map<String, dynamic> map) {
    return EmailReceiver(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

