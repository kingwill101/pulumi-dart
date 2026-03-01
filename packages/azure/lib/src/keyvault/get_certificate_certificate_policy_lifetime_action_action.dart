// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateCertificatePolicyLifetimeActionAction {
  /// The Type of action to be performed when the lifetime trigger is triggerec.
  final String actionType;

  /// Creates a new [GetCertificateCertificatePolicyLifetimeActionAction].
  /// [actionType] The Type of action to be performed when the lifetime trigger is triggerec.
  GetCertificateCertificatePolicyLifetimeActionAction({
    required this.actionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
    };
  }

  factory GetCertificateCertificatePolicyLifetimeActionAction.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyLifetimeActionAction(
      actionType: map['actionType'] as String,
    );
  }
}

