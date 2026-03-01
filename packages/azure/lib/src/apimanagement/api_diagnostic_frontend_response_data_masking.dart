// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_frontend_response_data_masking_header.dart';
import 'api_diagnostic_frontend_response_data_masking_query_param.dart';

class ApiDiagnosticFrontendResponseDataMasking {
  /// A `headers` block as defined below.
  final List<ApiDiagnosticFrontendResponseDataMaskingHeader>? headers;
  /// A `query_params` block as defined below.
  final List<ApiDiagnosticFrontendResponseDataMaskingQueryParam>? queryParams;

  /// Creates a new [ApiDiagnosticFrontendResponseDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  ApiDiagnosticFrontendResponseDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ApiDiagnosticFrontendResponseDataMaskingHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'queryParams': ?queryParams == null ? null : pulumi.Input.encodeList<ApiDiagnosticFrontendResponseDataMaskingQueryParam, Map<String, dynamic>>(queryParams!, (value) => value.toMap()),
    };
  }

  factory ApiDiagnosticFrontendResponseDataMasking.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticFrontendResponseDataMasking(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ApiDiagnosticFrontendResponseDataMaskingHeader>(map['headers'], (value) => ApiDiagnosticFrontendResponseDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>())),
      queryParams: map['queryParams'] == null ? null : pulumi.Input.decodeList<ApiDiagnosticFrontendResponseDataMaskingQueryParam>(map['queryParams'], (value) => ApiDiagnosticFrontendResponseDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

