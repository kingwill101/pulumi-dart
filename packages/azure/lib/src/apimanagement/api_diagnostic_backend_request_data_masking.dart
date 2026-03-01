// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_diagnostic_backend_request_data_masking_header.dart';
import 'api_diagnostic_backend_request_data_masking_query_param.dart';

class ApiDiagnosticBackendRequestDataMasking {
  /// A `headers` block as defined below.
  final List<ApiDiagnosticBackendRequestDataMaskingHeader>? headers;
  /// A `query_params` block as defined below.
  final List<ApiDiagnosticBackendRequestDataMaskingQueryParam>? queryParams;

  /// Creates a new [ApiDiagnosticBackendRequestDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  ApiDiagnosticBackendRequestDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<ApiDiagnosticBackendRequestDataMaskingHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'queryParams': ?queryParams == null ? null : pulumi.Input.encodeList<ApiDiagnosticBackendRequestDataMaskingQueryParam, Map<String, dynamic>>(queryParams!, (value) => value.toMap()),
    };
  }

  factory ApiDiagnosticBackendRequestDataMasking.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticBackendRequestDataMasking(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<ApiDiagnosticBackendRequestDataMaskingHeader>(map['headers'], (value) => ApiDiagnosticBackendRequestDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>())),
      queryParams: map['queryParams'] == null ? null : pulumi.Input.decodeList<ApiDiagnosticBackendRequestDataMaskingQueryParam>(map['queryParams'], (value) => ApiDiagnosticBackendRequestDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

