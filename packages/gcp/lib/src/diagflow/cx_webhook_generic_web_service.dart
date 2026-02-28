// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_webhook_generic_web_service_oauth_config.dart';
import 'cx_webhook_generic_web_service_secret_versions_for_request_header.dart';
import 'cx_webhook_generic_web_service_service_account_auth_config.dart';

class CxWebhookGenericWebService {
  /// Specifies a list of allowed custom CA certificates (in DER format) for
  /// HTTPS verification. This overrides the default SSL trust store. If this
  /// is empty or unspecified, Dialogflow will use Google's default trust store
  /// to verify certificates.
  /// N.B. Make sure the HTTPS server certificates are signed with "subject alt
  /// name". For instance a certificate can be self-signed using the following
  /// command,
  /// openssl x509 -req -days 200 -in example.com.csr \
  /// -signkey example.com.key \
  /// -out example.com.crt \
  /// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
  final List<String>? allowedCaCerts;

  /// HTTP method for the flexible webhook calls. Standard webhook always uses
  /// POST.
  /// Possible values are: `POST`, `GET`, `HEAD`, `PUT`, `DELETE`, `PATCH`, `OPTIONS`.
  final String? httpMethod;

  /// Represents configuration of OAuth client credential flow for 3rd party
  /// API authentication.
  /// Structure is documented below.
  final CxWebhookGenericWebServiceOauthConfig? oauthConfig;

  /// Maps the values extracted from specific fields of the flexible webhook
  /// response into session parameters.
  /// - Key: session parameter name
  /// - Value: field path in the webhook response
  final Map<String, String>? parameterMapping;

  /// Defines a custom JSON object as request body to send to flexible webhook.
  final String? requestBody;

  /// The HTTP request headers to send together with webhook requests.
  final Map<String, String>? requestHeaders;

  /// The SecretManager secret version resource storing the username:password
  /// pair for HTTP Basic authentication.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final String? secretVersionForUsernamePassword;

  /// The HTTP request headers to send together with webhook requests. Header
  /// values are stored in SecretManager secret versions.
  /// When the same header name is specified in both `request_headers` and
  /// `secret_versions_for_request_headers`, the value in
  /// `secret_versions_for_request_headers` will be used.
  /// Structure is documented below.
  final List<CxWebhookGenericWebServiceSecretVersionsForRequestHeader>?
      secretVersionsForRequestHeaders;

  /// Configuration for authentication using a service account.
  /// Structure is documented below.
  final CxWebhookGenericWebServiceServiceAccountAuthConfig?
      serviceAccountAuthConfig;

  /// Indicate the auth token type generated from the [Diglogflow service
  /// agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent).
  /// The generated token is sent in the Authorization header.
  /// Possible values are: `NONE`, `ID_TOKEN`, `ACCESS_TOKEN`.
  final String? serviceAgentAuth;

  /// The webhook URI for receiving POST requests. It must use https protocol.
  final String uri;

  /// Type of the webhook.
  /// Possible values are: `STANDARD`, `FLEXIBLE`.
  final String? webhookType;

  /// Creates a new [CxWebhookGenericWebService].
  /// [allowedCaCerts] Specifies a list of allowed custom CA certificates (in DER format) for
  /// [httpMethod] HTTP method for the flexible webhook calls. Standard webhook always uses
  /// [oauthConfig] Represents configuration of OAuth client credential flow for 3rd party
  /// [parameterMapping] Maps the values extracted from specific fields of the flexible webhook
  /// [requestBody] Defines a custom JSON object as request body to send to flexible webhook.
  /// [requestHeaders] The HTTP request headers to send together with webhook requests.
  /// [secretVersionForUsernamePassword] The SecretManager secret version resource storing the username:password
  /// [secretVersionsForRequestHeaders] The HTTP request headers to send together with webhook requests. Header
  /// [serviceAccountAuthConfig] Configuration for authentication using a service account.
  /// [serviceAgentAuth] Indicate the auth token type generated from the [Diglogflow service
  /// [uri] The webhook URI for receiving POST requests. It must use https protocol.
  /// [webhookType] Type of the webhook.
  CxWebhookGenericWebService({
    this.allowedCaCerts,
    this.httpMethod,
    this.oauthConfig,
    this.parameterMapping,
    this.requestBody,
    this.requestHeaders,
    this.secretVersionForUsernamePassword,
    this.secretVersionsForRequestHeaders,
    this.serviceAccountAuthConfig,
    this.serviceAgentAuth,
    required this.uri,
    this.webhookType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedCaCertsValue = allowedCaCerts;
    if (allowedCaCertsValue != null) {
      map['allowedCaCerts'] = allowedCaCertsValue;
    }
    final httpMethodValue = httpMethod;
    if (httpMethodValue != null) {
      map['httpMethod'] = httpMethodValue;
    }
    final oauthConfigValue = oauthConfig;
    if (oauthConfigValue != null) {
      map['oauthConfig'] = oauthConfigValue.toMap();
    }
    final parameterMappingValue = parameterMapping;
    if (parameterMappingValue != null) {
      map['parameterMapping'] = parameterMappingValue;
    }
    final requestBodyValue = requestBody;
    if (requestBodyValue != null) {
      map['requestBody'] = requestBodyValue;
    }
    final requestHeadersValue = requestHeaders;
    if (requestHeadersValue != null) {
      map['requestHeaders'] = requestHeadersValue;
    }
    final secretVersionForUsernamePasswordValue =
        secretVersionForUsernamePassword;
    if (secretVersionForUsernamePasswordValue != null) {
      map['secretVersionForUsernamePassword'] =
          secretVersionForUsernamePasswordValue;
    }
    final secretVersionsForRequestHeadersValue =
        secretVersionsForRequestHeaders;
    if (secretVersionsForRequestHeadersValue != null) {
      map['secretVersionsForRequestHeaders'] = pulumi.Input.encodeList<
              CxWebhookGenericWebServiceSecretVersionsForRequestHeader,
              Map<String, dynamic>>(
          secretVersionsForRequestHeadersValue, (value) => value.toMap());
    }
    final serviceAccountAuthConfigValue = serviceAccountAuthConfig;
    if (serviceAccountAuthConfigValue != null) {
      map['serviceAccountAuthConfig'] = serviceAccountAuthConfigValue.toMap();
    }
    final serviceAgentAuthValue = serviceAgentAuth;
    if (serviceAgentAuthValue != null) {
      map['serviceAgentAuth'] = serviceAgentAuthValue;
    }
    map['uri'] = uri;
    final webhookTypeValue = webhookType;
    if (webhookTypeValue != null) {
      map['webhookType'] = webhookTypeValue;
    }
    return map;
  }

  factory CxWebhookGenericWebService.fromMap(Map<String, dynamic> map) {
    return CxWebhookGenericWebService(
      allowedCaCerts: map['allowedCaCerts'] == null
          ? null
          : (map['allowedCaCerts'] as List).cast<String>(),
      httpMethod:
          map['httpMethod'] == null ? null : map['httpMethod'] as String,
      oauthConfig: map['oauthConfig'] == null
          ? null
          : CxWebhookGenericWebServiceOauthConfig.fromMap(
              (map['oauthConfig'] as Map).cast<String, dynamic>()),
      parameterMapping: map['parameterMapping'] == null
          ? null
          : (map['parameterMapping'] as Map).cast<String, String>(),
      requestBody:
          map['requestBody'] == null ? null : map['requestBody'] as String,
      requestHeaders: map['requestHeaders'] == null
          ? null
          : (map['requestHeaders'] as Map).cast<String, String>(),
      secretVersionForUsernamePassword:
          map['secretVersionForUsernamePassword'] == null
              ? null
              : map['secretVersionForUsernamePassword'] as String,
      secretVersionsForRequestHeaders:
          map['secretVersionsForRequestHeaders'] == null
              ? null
              : pulumi.Input.decodeList<
                      CxWebhookGenericWebServiceSecretVersionsForRequestHeader>(
                  map['secretVersionsForRequestHeaders'],
                  (value) =>
                      CxWebhookGenericWebServiceSecretVersionsForRequestHeader
                          .fromMap((value as Map).cast<String, dynamic>())),
      serviceAccountAuthConfig: map['serviceAccountAuthConfig'] == null
          ? null
          : CxWebhookGenericWebServiceServiceAccountAuthConfig.fromMap(
              (map['serviceAccountAuthConfig'] as Map).cast<String, dynamic>()),
      serviceAgentAuth: map['serviceAgentAuth'] == null
          ? null
          : map['serviceAgentAuth'] as String,
      uri: map['uri'] as String,
      webhookType:
          map['webhookType'] == null ? null : map['webhookType'] as String,
    );
  }
}
