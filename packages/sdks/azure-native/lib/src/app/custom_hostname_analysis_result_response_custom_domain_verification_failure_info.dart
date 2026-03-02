// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_hostname_analysis_result_response_details.dart';

/// Raw failure information if DNS verification fails.
class CustomHostnameAnalysisResultResponseCustomDomainVerificationFailureInfo {
  /// Standardized string to programmatically identify the error.
  final pulumi.Input<String> code;
  /// Details or the error
  final pulumi.Input<List<CustomHostnameAnalysisResultResponseDetails>>? details;
  /// Detailed error description and debugging information.
  final pulumi.Input<String> message;
  /// Detailed error description and debugging information.
  final pulumi.Input<String> target;

  /// Creates a new [CustomHostnameAnalysisResultResponseCustomDomainVerificationFailureInfo].
  /// [code] Standardized string to programmatically identify the error.
  /// [details] Details or the error
  /// [message] Detailed error description and debugging information.
  /// [target] Detailed error description and debugging information.
  CustomHostnameAnalysisResultResponseCustomDomainVerificationFailureInfo({
    required this.code,
    this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<CustomHostnameAnalysisResultResponseDetails>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<CustomHostnameAnalysisResultResponseDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
      'target': target,
    };
  }

  factory CustomHostnameAnalysisResultResponseCustomDomainVerificationFailureInfo.fromMap(Map<String, dynamic> map) {
    return CustomHostnameAnalysisResultResponseCustomDomainVerificationFailureInfo(
      code: (map['code'] as String).input(),
      details: map['details'] == null ? null : (pulumi.Input.decodeList<CustomHostnameAnalysisResultResponseDetails>(map['details'], (value) => CustomHostnameAnalysisResultResponseDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: (map['message'] as String).input(),
      target: (map['target'] as String).input(),
    );
  }
}

