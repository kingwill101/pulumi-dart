// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_frontend_request_data_masking_header.dart';
import 'diagnostic_frontend_request_data_masking_query_param.dart';

class DiagnosticFrontendRequestDataMasking {
  /// A `headers` block as defined below.
  final List<DiagnosticFrontendRequestDataMaskingHeader>? headers;
  /// A `query_params` block as defined below.
  final List<DiagnosticFrontendRequestDataMaskingQueryParam>? queryParams;

  /// Creates a new [DiagnosticFrontendRequestDataMasking].
  /// [headers] A `headers` block as defined below.
  /// [queryParams] A `query_params` block as defined below.
  DiagnosticFrontendRequestDataMasking({
    this.headers,
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<DiagnosticFrontendRequestDataMaskingHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'queryParams': ?queryParams == null ? null : pulumi.Input.encodeList<DiagnosticFrontendRequestDataMaskingQueryParam, Map<String, dynamic>>(queryParams!, (value) => value.toMap()),
    };
  }

  factory DiagnosticFrontendRequestDataMasking.fromMap(Map<String, dynamic> map) {
    return DiagnosticFrontendRequestDataMasking(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<DiagnosticFrontendRequestDataMaskingHeader>(map['headers'], (value) => DiagnosticFrontendRequestDataMaskingHeader.fromMap((value as Map).cast<String, dynamic>())),
      queryParams: map['queryParams'] == null ? null : pulumi.Input.decodeList<DiagnosticFrontendRequestDataMaskingQueryParam>(map['queryParams'], (value) => DiagnosticFrontendRequestDataMaskingQueryParam.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

