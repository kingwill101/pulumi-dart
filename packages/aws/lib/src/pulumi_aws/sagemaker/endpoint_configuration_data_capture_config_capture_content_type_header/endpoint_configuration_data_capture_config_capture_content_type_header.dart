// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationDataCaptureConfigCaptureContentTypeHeader {
  /// CSV content type headers to capture. One of <span pulumi-lang-nodejs="`csvContentTypes`" pulumi-lang-dotnet="`CsvContentTypes`" pulumi-lang-go="`csvContentTypes`" pulumi-lang-python="`csv_content_types`" pulumi-lang-yaml="`csvContentTypes`" pulumi-lang-java="`csvContentTypes`">`csv_content_types`</span> or <span pulumi-lang-nodejs="`jsonContentTypes`" pulumi-lang-dotnet="`JsonContentTypes`" pulumi-lang-go="`jsonContentTypes`" pulumi-lang-python="`json_content_types`" pulumi-lang-yaml="`jsonContentTypes`" pulumi-lang-java="`jsonContentTypes`">`json_content_types`</span> is required.
  final List<String>? csvContentTypes;

  /// The JSON content type headers to capture. One of <span pulumi-lang-nodejs="`jsonContentTypes`" pulumi-lang-dotnet="`JsonContentTypes`" pulumi-lang-go="`jsonContentTypes`" pulumi-lang-python="`json_content_types`" pulumi-lang-yaml="`jsonContentTypes`" pulumi-lang-java="`jsonContentTypes`">`json_content_types`</span> or <span pulumi-lang-nodejs="`csvContentTypes`" pulumi-lang-dotnet="`CsvContentTypes`" pulumi-lang-go="`csvContentTypes`" pulumi-lang-python="`csv_content_types`" pulumi-lang-yaml="`csvContentTypes`" pulumi-lang-java="`csvContentTypes`">`csv_content_types`</span> is required.
  final List<String>? jsonContentTypes;

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
