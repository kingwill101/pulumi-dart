// ignore_for_file: unused_element, unnecessary_cast


/// Azure FirstParty Managed Certificate provided by other first party resource providers to enable HTTPS.
class AzureFirstPartyManagedCertificateParameters {
  /// The list of SANs.
  final List<String>? subjectAlternativeNames;
  /// The type of the secret resource.
  /// Expected value is 'AzureFirstPartyManagedCertificate'.
  final String type;

  /// Creates a new [AzureFirstPartyManagedCertificateParameters].
  /// [subjectAlternativeNames] The list of SANs.
  /// [type] The type of the secret resource.
  AzureFirstPartyManagedCertificateParameters({
    this.subjectAlternativeNames,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'type': type,
    };
  }

  factory AzureFirstPartyManagedCertificateParameters.fromMap(Map<String, dynamic> map) {
    return AzureFirstPartyManagedCertificateParameters(
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : (map['subjectAlternativeNames'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

