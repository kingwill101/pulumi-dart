// ignore_for_file: unused_element, unnecessary_cast


/// An email receiver.
class EmailReceiverResponse {
  /// The email address of this receiver.
  final String emailAddress;
  /// The name of the email receiver. Names must be unique across all receivers within a tenant action group.
  final String name;
  /// The receiver status of the e-mail.
  final String status;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [EmailReceiverResponse].
  /// [emailAddress] The email address of this receiver.
  /// [name] The name of the email receiver. Names must be unique across all receivers within a tenant action group.
  /// [status] The receiver status of the e-mail.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  EmailReceiverResponse({
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
      emailAddress: map['emailAddress'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

