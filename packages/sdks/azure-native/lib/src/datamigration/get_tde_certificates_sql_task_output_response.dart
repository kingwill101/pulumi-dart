// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output of the task that gets TDE certificates in Base64 encoded format.
class GetTdeCertificatesSqlTaskOutputResponse {
  /// Mapping from certificate name to base 64 encoded format.
  final pulumi.Input<Map<String, List<String>>> base64EncodedCertificates;
  /// Validation errors
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [GetTdeCertificatesSqlTaskOutputResponse].
  /// [base64EncodedCertificates] Mapping from certificate name to base 64 encoded format.
  /// [validationErrors] Validation errors
  const GetTdeCertificatesSqlTaskOutputResponse({
    required this.base64EncodedCertificates,
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base64EncodedCertificates': base64EncodedCertificates,
      'validationErrors': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(validationErrors, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTdeCertificatesSqlTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return GetTdeCertificatesSqlTaskOutputResponse(
      base64EncodedCertificates: pulumi.Input.fromValue((map['base64EncodedCertificates'] as Map).cast<String, List<String>>()),
      validationErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['validationErrors']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

