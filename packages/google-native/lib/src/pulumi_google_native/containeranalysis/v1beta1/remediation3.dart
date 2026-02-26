// ignore_for_file: unused_element, unnecessary_cast

import 'related_url3.dart';
import 'remediation_remediation_type3.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class Remediation3 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final String? details;

  /// The type of remediation that can be applied.
  final RemediationRemediationType3? remediationType;

  /// Contains the URL where to obtain the remediation.
  final RelatedUrl3? remediationUri;

  Remediation3({
    this.details,
    this.remediationType,
    this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final remediationTypeValue = remediationType;
    if (remediationTypeValue != null) {
      map['remediationType'] = remediationTypeValue.value;
    }
    final remediationUriValue = remediationUri;
    if (remediationUriValue != null) {
      map['remediationUri'] = remediationUriValue.toMap();
    }
    return map;
  }

  factory Remediation3.fromMap(Map<String, dynamic> map) {
    return Remediation3(
      details: map['details'] == null ? null : map['details'] as String,
      remediationType: map['remediationType'] == null
          ? null
          : RemediationRemediationType3.fromValue(
              map['remediationType'] as String),
      remediationUri: map['remediationUri'] == null
          ? null
          : RelatedUrl3.fromMap(
              (map['remediationUri'] as Map).cast<String, dynamic>()),
    );
  }
}
