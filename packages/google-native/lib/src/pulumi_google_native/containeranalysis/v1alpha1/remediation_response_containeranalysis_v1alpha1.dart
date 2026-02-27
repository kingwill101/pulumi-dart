// ignore_for_file: unused_element, unnecessary_cast

import 'uriresponse.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationResponseContaineranalysisV1alpha1 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final String details;

  /// The type of remediation that can be applied.
  final String remediationType;

  /// Contains the URL where to obtain the remediation.
  final URIResponse remediationUri;

  RemediationResponseContaineranalysisV1alpha1({
    required this.details,
    required this.remediationType,
    required this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['remediationType'] = remediationType;
    map['remediationUri'] = remediationUri.toMap();
    return map;
  }

  factory RemediationResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return RemediationResponseContaineranalysisV1alpha1(
      details: map['details'] as String,
      remediationType: map['remediationType'] as String,
      remediationUri: URIResponse.fromMap(
          (map['remediationUri'] as Map).cast<String, dynamic>()),
    );
  }
}
