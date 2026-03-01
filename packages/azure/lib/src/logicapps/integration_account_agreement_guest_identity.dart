// ignore_for_file: unused_element, unnecessary_cast


class IntegrationAccountAgreementGuestIdentity {
  /// The authenticating body that provides unique guest identities to organizations.
  final String qualifier;
  /// The value that identifies the documents that your logic apps receive.
  final String value;

  /// Creates a new [IntegrationAccountAgreementGuestIdentity].
  /// [qualifier] The authenticating body that provides unique guest identities to organizations.
  /// [value] The value that identifies the documents that your logic apps receive.
  IntegrationAccountAgreementGuestIdentity({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory IntegrationAccountAgreementGuestIdentity.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAgreementGuestIdentity(
      qualifier: map['qualifier'] as String,
      value: map['value'] as String,
    );
  }
}

