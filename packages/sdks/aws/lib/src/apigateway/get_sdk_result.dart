// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSdk.
class GetSdkResult {
  /// SDK as a string.
  final String? body;
  /// Content-disposition header value in the HTTP response.
  final String? contentDisposition;
  /// Content-type header value in the HTTP response.
  final String? contentType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? parameters;
  final String? region;
  final String? restApiId;
  final String? sdkType;
  final String? stageName;

  /// Creates a new [GetSdkResult].
  /// [body] SDK as a string.
  /// [contentDisposition] Content-disposition header value in the HTTP response.
  /// [contentType] Content-type header value in the HTTP response.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameters] Optional.
  /// [region] Optional.
  /// [restApiId] Optional.
  /// [sdkType] Optional.
  /// [stageName] Optional.
  const GetSdkResult({
    this.body,
    this.contentDisposition,
    this.contentType,
    this.id,
    this.parameters,
    this.region,
    this.restApiId,
    this.sdkType,
    this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'contentDisposition': ?contentDisposition,
      'contentType': ?contentType,
      'id': ?id,
      'parameters': ?parameters,
      'region': ?region,
      'restApiId': ?restApiId,
      'sdkType': ?sdkType,
      'stageName': ?stageName,
    };
  }

  factory GetSdkResult.fromMap(Map<String, dynamic> map) {
    return GetSdkResult(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentDisposition: (() { final guardedValue = map['contentDisposition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restApiId: (() { final guardedValue = map['restApiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sdkType: (() { final guardedValue = map['sdkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stageName: (() { final guardedValue = map['stageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
