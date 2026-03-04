// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSdk.
class GetSdkResult {
  /// SDK as a string.
  final String body;

  /// Content-disposition header value in the HTTP response.
  final String contentDisposition;

  /// Content-type header value in the HTTP response.
  final String contentType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String>? parameters;
  final String region;
  final String restApiId;
  final String sdkType;
  final String stageName;

  /// Creates a new [GetSdkResult].
  /// [body] SDK as a string.
  /// [contentDisposition] Content-disposition header value in the HTTP response.
  /// [contentType] Content-type header value in the HTTP response.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameters] Optional.
  /// [region] Required.
  /// [restApiId] Required.
  /// [sdkType] Required.
  /// [stageName] Required.
  GetSdkResult({
    required this.body,
    required this.contentDisposition,
    required this.contentType,
    required this.id,
    this.parameters,
    required this.region,
    required this.restApiId,
    required this.sdkType,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'contentDisposition': contentDisposition,
      'contentType': contentType,
      'id': id,
      'parameters': ?parameters,
      'region': region,
      'restApiId': restApiId,
      'sdkType': sdkType,
      'stageName': stageName,
    };
  }

  factory GetSdkResult.fromMap(Map<String, dynamic> map) {
    return GetSdkResult(
      body: map['body'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentType: map['contentType'] as String,
      id: map['id'] as String,
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      region: map['region'] as String,
      restApiId: map['restApiId'] as String,
      sdkType: map['sdkType'] as String,
      stageName: map['stageName'] as String,
    );
  }
}
