// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service_http_method.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service_webhook_type.dart';

/// Represents configuration for a generic web service.
class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService {
  /// Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -out example.com.crt \ -extfile <(printf "\nsubjectAltName='DNS:www.example.com'") ```
  final List<String>? allowedCaCerts;

  /// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  final GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod?
  httpMethod;

  /// Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  final Map<String, String>? parameterMapping;

  /// The password for HTTP Basic authentication.
  final String? password;

  /// Optional. Defines a custom JSON object as request body to send to flexible webhook.
  final String? requestBody;

  /// The HTTP request headers to send together with webhook requests.
  final Map<String, String>? requestHeaders;

  /// The webhook URI for receiving POST requests. It must use https protocol.
  final String uri;

  /// The user name for HTTP Basic authentication.
  final String? username;

  /// Optional. Type of the webhook.
  final GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType?
  webhookType;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1WebhookGenericWebService].
  /// [allowedCaCerts] Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with "subject alt name". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -signkey example.com.key \ -out example.com.crt \ -extfile <(printf "\nsubjectAltName='DNS:www.example.com'") ```
  /// [httpMethod] Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
  /// [parameterMapping] Optional. Maps the values extracted from specific fields of the flexible webhook response into session parameters. - Key: session parameter name - Value: field path in the webhook response
  /// [password] The password for HTTP Basic authentication.
  /// [requestBody] Optional. Defines a custom JSON object as request body to send to flexible webhook.
  /// [requestHeaders] The HTTP request headers to send together with webhook requests.
  /// [uri] The webhook URI for receiving POST requests. It must use https protocol.
  /// [username] The user name for HTTP Basic authentication.
  /// [webhookType] Optional. Type of the webhook.
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.parameterMapping,
    this.password,
    this.requestBody,
    this.requestHeaders,
    required this.uri,
    this.username,
    this.webhookType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCaCerts': ?allowedCaCerts,
      'httpMethod': ?httpMethod == null ? null : httpMethod!.value,
      'parameterMapping': ?parameterMapping,
      'password': ?password,
      'requestBody': ?requestBody,
      'requestHeaders': ?requestHeaders,
      'uri': uri,
      'username': ?username,
      'webhookType': ?webhookType == null ? null : webhookType!.value,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1WebhookGenericWebService.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1WebhookGenericWebService(
      allowedCaCerts: map['allowedCaCerts'] == null
          ? null
          : (map['allowedCaCerts'] as List).cast<String>(),
      httpMethod: map['httpMethod'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod.fromValue(
              map['httpMethod'] as String,
            ),
      parameterMapping: map['parameterMapping'] == null
          ? null
          : (map['parameterMapping'] as Map).cast<String, String>(),
      password: map['password'] == null ? null : map['password'] as String,
      requestBody: map['requestBody'] == null
          ? null
          : map['requestBody'] as String,
      requestHeaders: map['requestHeaders'] == null
          ? null
          : (map['requestHeaders'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
      webhookType: map['webhookType'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceWebhookType.fromValue(
              map['webhookType'] as String,
            ),
    );
  }
}
