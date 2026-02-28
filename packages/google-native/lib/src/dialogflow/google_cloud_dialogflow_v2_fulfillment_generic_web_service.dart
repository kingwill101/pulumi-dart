// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. More information could be found at: https://cloud.google.com/dialogflow/docs/fulfillment-configure.
class GoogleCloudDialogflowV2FulfillmentGenericWebService {
  /// Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  final bool? isCloudFunction;

  /// Optional. The password for HTTP Basic authentication.
  final String? password;

  /// Optional. The HTTP request headers to send together with fulfillment requests.
  final Map<String, String>? requestHeaders;

  /// The fulfillment URI for receiving POST requests. It must use https protocol.
  final String uri;

  /// Optional. The user name for HTTP Basic authentication.
  final String? username;

  /// Creates a new [GoogleCloudDialogflowV2FulfillmentGenericWebService].
  /// [isCloudFunction] Optional. Indicates if generic web service is created through Cloud Functions integration. Defaults to false. is_cloud_function is deprecated. Cloud functions can be configured by its uri as a regular web service now.
  /// [password] Optional. The password for HTTP Basic authentication.
  /// [requestHeaders] Optional. The HTTP request headers to send together with fulfillment requests.
  /// [uri] The fulfillment URI for receiving POST requests. It must use https protocol.
  /// [username] Optional. The user name for HTTP Basic authentication.
  GoogleCloudDialogflowV2FulfillmentGenericWebService({
    this.isCloudFunction,
    this.password,
    this.requestHeaders,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isCloudFunctionValue = isCloudFunction;
    if (isCloudFunctionValue != null) {
      map['isCloudFunction'] = isCloudFunctionValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final requestHeadersValue = requestHeaders;
    if (requestHeadersValue != null) {
      map['requestHeaders'] = requestHeadersValue;
    }
    map['uri'] = uri;
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2FulfillmentGenericWebService.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2FulfillmentGenericWebService(
      isCloudFunction: map['isCloudFunction'] == null
          ? null
          : map['isCloudFunction'] as bool,
      password: map['password'] == null ? null : map['password'] as String,
      requestHeaders: map['requestHeaders'] == null
          ? null
          : (map['requestHeaders'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
