// ignore_for_file: unused_element, unnecessary_cast

import 'remediation_remediation_type_containeranalysis_v1alpha1.dart';
import 'uri.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationContaineranalysisV1alpha1 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final String? details;

  /// The type of remediation that can be applied.
  final RemediationRemediationTypeContaineranalysisV1alpha1? remediationType;

  /// Contains the URL where to obtain the remediation.
  final URI? remediationUri;

  /// Creates a new [RemediationContaineranalysisV1alpha1].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  RemediationContaineranalysisV1alpha1({
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

  factory RemediationContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return RemediationContaineranalysisV1alpha1(
      details: map['details'] == null ? null : map['details'] as String,
      remediationType: map['remediationType'] == null
          ? null
          : RemediationRemediationTypeContaineranalysisV1alpha1.fromValue(
              map['remediationType'] as String),
      remediationUri: map['remediationUri'] == null
          ? null
          : URI.fromMap((map['remediationUri'] as Map).cast<String, dynamic>()),
    );
  }
}
