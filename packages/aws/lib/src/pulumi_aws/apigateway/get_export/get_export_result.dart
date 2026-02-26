// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExport.
class GetExportResult {
  final String? accepts;

  /// API Spec.
  final String body;

  /// Content-disposition header value in the HTTP response.
  final String contentDisposition;

  /// Content-type header value in the HTTP response.
  final String contentType;
  final String exportType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String>? parameters;
  final String region;
  final String restApiId;
  final String stageName;

  GetExportResult({
    this.accepts,
    required this.body,
    required this.contentDisposition,
    required this.contentType,
    required this.exportType,
    required this.id,
    this.parameters,
    required this.region,
    required this.restApiId,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptsValue = accepts;
    if (acceptsValue != null) {
      map['accepts'] = acceptsValue;
    }
    map['body'] = body;
    map['contentDisposition'] = contentDisposition;
    map['contentType'] = contentType;
    map['exportType'] = exportType;
    map['id'] = id;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    map['region'] = region;
    map['restApiId'] = restApiId;
    map['stageName'] = stageName;
    return map;
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      accepts: map['accepts'] == null ? null : map['accepts'] as String,
      body: map['body'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentType: map['contentType'] as String,
      exportType: map['exportType'] as String,
      id: map['id'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] as String,
      restApiId: map['restApiId'] as String,
      stageName: map['stageName'] as String,
    );
  }
}
