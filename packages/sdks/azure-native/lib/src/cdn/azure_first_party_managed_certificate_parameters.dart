// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure FirstParty Managed Certificate provided by other first party resource providers to enable HTTPS.
class AzureFirstPartyManagedCertificateParameters {
  /// The list of SANs.
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// The type of the secret resource.
  /// Expected value is 'AzureFirstPartyManagedCertificate'.
  final pulumi.Input<String> type;

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
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : ((map['subjectAlternativeNames']! as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

