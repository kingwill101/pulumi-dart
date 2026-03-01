// ignore_for_file: unused_element, unnecessary_cast

import 'related_url_containeranalysis_v1beta1.dart';
import 'remediation_remediation_type_containeranalysis_v1beta1.dart';

/// Specifies details on how to handle (and presumably, fix) a vulnerability.
class RemediationContaineranalysisV1beta1 {
  /// Contains a comprehensive human-readable discussion of the remediation.
  final String? details;

  /// The type of remediation that can be applied.
  final RemediationRemediationTypeContaineranalysisV1beta1? remediationType;

  /// Contains the URL where to obtain the remediation.
  final RelatedUrlContaineranalysisV1beta1? remediationUri;

  /// Creates a new [RemediationContaineranalysisV1beta1].
  /// [details] Contains a comprehensive human-readable discussion of the remediation.
  /// [remediationType] The type of remediation that can be applied.
  /// [remediationUri] Contains the URL where to obtain the remediation.
  RemediationContaineranalysisV1beta1({
    this.details,
    this.remediationType,
    this.remediationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'remediationType': ?remediationType == null
          ? null
          : remediationType!.value,
      'remediationUri': ?remediationUri == null
          ? null
          : remediationUri!.toMap(),
    };
  }

  factory RemediationContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RemediationContaineranalysisV1beta1(
      details: map['details'] == null ? null : map['details'] as String,
      remediationType: map['remediationType'] == null
          ? null
          : RemediationRemediationTypeContaineranalysisV1beta1.fromValue(
              map['remediationType'] as String,
            ),
      remediationUri: map['remediationUri'] == null
          ? null
          : RelatedUrlContaineranalysisV1beta1.fromMap(
              (map['remediationUri'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
