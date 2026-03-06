// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An email receiver.
class EmailReceiverResponse {
  /// The email address of this receiver.
  final pulumi.Input<String> emailAddress;
  /// The name of the email receiver. Names must be unique across all receivers within a tenant action group.
  final pulumi.Input<String> name;
  /// The receiver status of the e-mail.
  final pulumi.Input<String> status;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [EmailReceiverResponse].
  /// [emailAddress] The email address of this receiver.
  /// [name] The name of the email receiver. Names must be unique across all receivers within a tenant action group.
  /// [status] The receiver status of the e-mail.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  const EmailReceiverResponse({
    required this.emailAddress,
    required this.name,
    required this.status,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
      'status': status,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory EmailReceiverResponse.fromMap(Map<String, dynamic> map) {
    return EmailReceiverResponse(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

