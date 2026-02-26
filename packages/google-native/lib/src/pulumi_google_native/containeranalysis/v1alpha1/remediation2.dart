// ignore_for_file: unused_element, unnecessary_cast

import 'remediation_remediation_type2.dart';
import 'uri.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class Remediation2 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final String? details;

  /// The type of remediation that can be applied.
  final RemediationRemediationType2? remediationType;

  /// Contains the URL where to obtain the remediation.
  final URI? remediationUri;

  Remediation2({
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

  factory Remediation2.fromMap(Map<String, dynamic> map) {
    return Remediation2(
      details: map['details'] == null ? null : map['details'] as String,
      remediationType: map['remediationType'] == null
          ? null
          : RemediationRemediationType2.fromValue(
              map['remediationType'] as String),
      remediationUri: map['remediationUri'] == null
          ? null
          : URI.fromMap((map['remediationUri'] as Map).cast<String, dynamic>()),
    );
  }
}
