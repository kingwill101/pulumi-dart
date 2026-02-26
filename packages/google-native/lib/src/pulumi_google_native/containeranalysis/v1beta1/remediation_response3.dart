// ignore_for_file: unused_element, unnecessary_cast

import 'related_url_response3.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationResponse3 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final String details;

  /// The type of remediation that can be applied.
  final String remediationType;

  /// Contains the URL where to obtain the remediation.
  final RelatedUrlResponse3 remediationUri;

  RemediationResponse3({
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

  factory RemediationResponse3.fromMap(Map<String, dynamic> map) {
    return RemediationResponse3(
      details: map['details'] as String,
      remediationType: map['remediationType'] as String,
      remediationUri: RelatedUrlResponse3.fromMap(
          (map['remediationUri'] as Map).cast<String, dynamic>()),
    );
  }
}
