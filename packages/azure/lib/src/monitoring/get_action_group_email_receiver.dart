// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupEmailReceiver {
  /// The email address of this receiver.
  final String emailAddress;
  /// Specifies the name of the Action Group.
  final String name;
  /// Indicates whether to use common alert schema.
  final bool useCommonAlertSchema;

  /// Creates a new [GetActionGroupEmailReceiver].
  /// [emailAddress] The email address of this receiver.
  /// [name] Specifies the name of the Action Group.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  GetActionGroupEmailReceiver({
    required this.emailAddress,
    required this.name,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupEmailReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupEmailReceiver(
      emailAddress: map['emailAddress'] as String,
      name: map['name'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] as bool,
    );
  }
}

