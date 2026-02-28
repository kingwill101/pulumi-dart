// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader {
  /// CSV content type headers to capture. One of `csv_content_types` or `json_content_types` is required.
  final List<String>? csvContentTypes;

  /// The JSON content type headers to capture. One of `json_content_types` or `csv_content_types` is required.
  final List<String>? jsonContentTypes;

  /// Creates a new [EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader].
  /// [csvContentTypes] CSV content type headers to capture. One of `csv_content_types` or `json_content_types` is required.
  /// [jsonContentTypes] The JSON content type headers to capture. One of `json_content_types` or `csv_content_types` is required.
  EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader({
    this.csvContentTypes,
    this.jsonContentTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvContentTypesValue = csvContentTypes;
    if (csvContentTypesValue != null) {
      map['csvContentTypes'] = csvContentTypesValue;
    }
    final jsonContentTypesValue = jsonContentTypes;
    if (jsonContentTypesValue != null) {
      map['jsonContentTypes'] = jsonContentTypesValue;
    }
    return map;
  }

  factory EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader(
      csvContentTypes: map['csvContentTypes'] == null
          ? null
          : (map['csvContentTypes'] as List).cast<String>(),
      jsonContentTypes: map['jsonContentTypes'] == null
          ? null
          : (map['jsonContentTypes'] as List).cast<String>(),
    );
  }
}
