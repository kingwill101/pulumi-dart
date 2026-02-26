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
    final map = <String, dynamic>{};
    map['body'] = body;
    map['contentDisposition'] = contentDisposition;
    map['contentType'] = contentType;
    map['id'] = id;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    map['region'] = region;
    map['restApiId'] = restApiId;
    map['sdkType'] = sdkType;
    map['stageName'] = stageName;
    return map;
  }

  factory GetSdkResult.fromMap(Map<String, dynamic> map) {
    return GetSdkResult(
      body: map['body'] as String,
      contentDisposition: map['contentDisposition'] as String,
      contentType: map['contentType'] as String,
      id: map['id'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] as String,
      restApiId: map['restApiId'] as String,
      sdkType: map['sdkType'] as String,
      stageName: map['stageName'] as String,
    );
  }
}
