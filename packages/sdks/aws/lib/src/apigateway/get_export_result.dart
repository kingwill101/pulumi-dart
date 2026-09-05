// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExport.
class GetExportResult {
  final String? accepts;
  /// API Spec.
  final String? body;
  /// Content-disposition header value in the HTTP response.
  final String? contentDisposition;
  /// Content-type header value in the HTTP response.
  final String? contentType;
  final String? exportType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? parameters;
  final String? region;
  final String? restApiId;
  final String? stageName;

  /// Creates a new [GetExportResult].
  /// [accepts] Optional.
  /// [body] API Spec.
  /// [contentDisposition] Content-disposition header value in the HTTP response.
  /// [contentType] Content-type header value in the HTTP response.
  /// [exportType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameters] Optional.
  /// [region] Optional.
  /// [restApiId] Optional.
  /// [stageName] Optional.
  const GetExportResult({
    this.accepts,
    this.body,
    this.contentDisposition,
    this.contentType,
    this.exportType,
    this.id,
    this.parameters,
    this.region,
    this.restApiId,
    this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepts': ?accepts,
      'body': ?body,
      'contentDisposition': ?contentDisposition,
      'contentType': ?contentType,
      'exportType': ?exportType,
      'id': ?id,
      'parameters': ?parameters,
      'region': ?region,
      'restApiId': ?restApiId,
      'stageName': ?stageName,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      accepts: (() { final guardedValue = map['accepts']; if (guardedValue == null) return null; return guardedValue as String; })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportType: (() { final guardedValue = map['exportType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restApiId: (() { final guardedValue = map['restApiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
