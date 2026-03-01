// ignore_for_file: unused_element, unnecessary_cast


class ApiDiagnosticBackendResponseDataMaskingQueryParam {
  /// The data masking mode. Possible values are `Mask` and `Hide` for `query_params`. The only possible value is `Mask` for `headers`.
  final String mode;
  /// The name of the header or the query parameter to mask.
  final String value;

  /// Creates a new [ApiDiagnosticBackendResponseDataMaskingQueryParam].
  /// [mode] The data masking mode. Possible values are `Mask` and `Hide` for `query_params`. The only possible value is `Mask` for `headers`.
  /// [value] The name of the header or the query parameter to mask.
  ApiDiagnosticBackendResponseDataMaskingQueryParam({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory ApiDiagnosticBackendResponseDataMaskingQueryParam.fromMap(Map<String, dynamic> map) {
    return ApiDiagnosticBackendResponseDataMaskingQueryParam(
      mode: map['mode'] as String,
      value: map['value'] as String,
    );
  }
}

