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

  /// Creates a new [GetExportResult].
  /// [accepts] Optional.
  /// [body] API Spec.
  /// [contentDisposition] Content-disposition header value in the HTTP response.
  /// [contentType] Content-type header value in the HTTP response.
  /// [exportType] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameters] Optional.
  /// [region] Required.
  /// [restApiId] Required.
  /// [stageName] Required.
  const GetExportResult({
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
    return <String, dynamic>{
      'accepts': ?accepts,
      'body': body,
      'contentDisposition': contentDisposition,
      'contentType': contentType,
      'exportType': exportType,
      'id': id,
      'parameters': ?parameters,
      'region': region,
      'restApiId': restApiId,
      'stageName': stageName,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      accepts: (() { final guardedValue = map['accepts']; if (guardedValue == null) return null; return guardedValue as String; })(),
      body: map['body'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentType: map['contentType'] as String,
      exportType: map['exportType'] as String,
      id: map['id'] as String,
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: map['region'] as String,
      restApiId: map['restApiId'] as String,
      stageName: map['stageName'] as String,
    );
  }
}
