// ignore_for_file: unused_element, unnecessary_cast


/// The ETA (estimated time of arrival) for remediation
class RemediationEtaResponse {
  /// ETA for remediation.
  final String eta;
  /// Justification for change of Eta.
  final String justification;

  /// Creates a new [RemediationEtaResponse].
  /// [eta] ETA for remediation.
  /// [justification] Justification for change of Eta.
  RemediationEtaResponse({
    required this.eta,
    required this.justification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eta': eta,
      'justification': justification,
    };
  }

  factory RemediationEtaResponse.fromMap(Map<String, dynamic> map) {
    return RemediationEtaResponse(
      eta: map['eta'] as String,
      justification: map['justification'] as String,
    );
  }
}

