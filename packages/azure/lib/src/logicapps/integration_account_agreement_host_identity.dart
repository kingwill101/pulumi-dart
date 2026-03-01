// ignore_for_file: unused_element, unnecessary_cast


class IntegrationAccountAgreementHostIdentity {
  /// The authenticating body that provides unique host identities to organizations.
  final String qualifier;
  /// The value that identifies the documents that your logic apps receive.
  final String value;

  /// Creates a new [IntegrationAccountAgreementHostIdentity].
  /// [qualifier] The authenticating body that provides unique host identities to organizations.
  /// [value] The value that identifies the documents that your logic apps receive.
  IntegrationAccountAgreementHostIdentity({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory IntegrationAccountAgreementHostIdentity.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAgreementHostIdentity(
      qualifier: map['qualifier'] as String,
      value: map['value'] as String,
    );
  }
}

