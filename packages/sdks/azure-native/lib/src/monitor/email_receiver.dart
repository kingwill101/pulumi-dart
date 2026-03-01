// ignore_for_file: unused_element, unnecessary_cast


/// An email receiver.
class EmailReceiver {
  /// The email address of this receiver.
  final String emailAddress;
  /// The name of the email receiver. Names must be unique across all receivers within a tenant action group.
  final String name;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

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
      emailAddress: map['emailAddress'] as String,
      name: map['name'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

