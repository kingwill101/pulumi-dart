// ignore_for_file: unused_element, unnecessary_cast


class IntegrationAccountPartnerBusinessIdentity {
  /// The authenticating body that provides unique business identities to organizations.
  final String qualifier;
  /// The value that identifies the documents that your logic apps receive.
  final String value;

  /// Creates a new [IntegrationAccountPartnerBusinessIdentity].
  /// [qualifier] The authenticating body that provides unique business identities to organizations.
  /// [value] The value that identifies the documents that your logic apps receive.
  IntegrationAccountPartnerBusinessIdentity({
    required this.qualifier,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qualifier': qualifier,
      'value': value,
    };
  }

  factory IntegrationAccountPartnerBusinessIdentity.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountPartnerBusinessIdentity(
      qualifier: map['qualifier'] as String,
      value: map['value'] as String,
    );
  }
}

