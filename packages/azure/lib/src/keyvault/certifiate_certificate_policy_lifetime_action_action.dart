// ignore_for_file: unused_element, unnecessary_cast


class CertifiateCertificatePolicyLifetimeActionAction {
  /// The Type of action to be performed when the lifetime trigger is triggerec. Possible values include `AutoRenew` and `EmailContacts`.
  final String actionType;

  /// Creates a new [CertifiateCertificatePolicyLifetimeActionAction].
  /// [actionType] The Type of action to be performed when the lifetime trigger is triggerec. Possible values include `AutoRenew` and `EmailContacts`.
  CertifiateCertificatePolicyLifetimeActionAction({
    required this.actionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
    };
  }

  factory CertifiateCertificatePolicyLifetimeActionAction.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicyLifetimeActionAction(
      actionType: map['actionType'] as String,
    );
  }
}

