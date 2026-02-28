// ignore_for_file: unused_element, unnecessary_cast

import 'related_url_response.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationResponse {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final String details;

  /// The type of remediation that can be applied.
  final String remediationType;

  /// Contains the URL where to obtain the remediation.
  final RelatedUrlResponse remediationUri;

  /// Creates a new [RemediationResponse].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  RemediationResponse({
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

  factory RemediationResponse.fromMap(Map<String, dynamic> map) {
    return RemediationResponse(
      details: map['details'] as String,
      remediationType: map['remediationType'] as String,
      remediationUri: RelatedUrlResponse.fromMap(
          (map['remediationUri'] as Map).cast<String, dynamic>()),
    );
  }
}
