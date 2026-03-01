// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_integration_response_integration_response_args_doc}
/// The set of arguments for IntegrationResponse.
/// {@endtemplate}
/// {@macro pulumi_apigateway_integration_response_integration_response_args_doc}
class IntegrationResponseArgs {
  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  final pulumi.Input<String>? contentHandling;

  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  final pulumi.Input<String> httpMethod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// API resource ID.
  final pulumi.Input<String> resourceId;

  /// Map of response parameters that can be read from the backend response. For example: `response_parameters = { "method.response.header.X-Some-Header" = "integration.response.header.X-Some-Other-Header" }`.
  final pulumi.Input<Map<String, String>>? responseParameters;

  /// Map of templates used to transform the integration response body.
  final pulumi.Input<Map<String, String>>? responseTemplates;

  /// ID of the associated REST API.
  final pulumi.Input<String> restApi;

  /// Regular expression pattern used to choose an integration response based on the response from the backend. Omit configuring this to make the integration the default one. If the backend is an `AWS` Lambda function, the AWS Lambda function error header is matched. For all other `HTTP` and `AWS` backends, the HTTP status code is matched.
  final pulumi.Input<String>? selectionPattern;

  /// HTTP status code.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> statusCode;

  /// Creates a new [IntegrationResponseArgs].
  /// [contentHandling] How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  /// [httpMethod] HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] API resource ID.
  /// [responseParameters] Map of response parameters that can be read from the backend response. For example: `response_parameters = { "method.response.header.X-Some-Header" = "integration.response.header.X-Some-Other-Header" }`.
  /// [responseTemplates] Map of templates used to transform the integration response body.
  /// [restApi] ID of the associated REST API.
  /// [selectionPattern] Regular expression pattern used to choose an integration response based on the response from the backend. Omit configuring this to make the integration the default one. If the backend is an `AWS` Lambda function, the AWS Lambda function error header is matched. For all other `HTTP` and `AWS` backends, the HTTP status code is matched.
  /// [statusCode] HTTP status code.
  IntegrationResponseArgs({
    String? contentHandling,
    required String httpMethod,
    String? region,
    required String resourceId,
    Map<String, String>? responseParameters,
    Map<String, String>? responseTemplates,
    required String restApi,
    String? selectionPattern,
    required String statusCode,
  }) : contentHandling = pulumi.Input.asOptionalInput<String>(contentHandling),
       httpMethod = pulumi.Input.asInput<String>(httpMethod),
       region = pulumi.Input.asOptionalInput<String>(region),
       resourceId = pulumi.Input.asInput<String>(resourceId),
       responseParameters = pulumi.Input.asOptionalInput<Map<String, String>>(
         responseParameters,
       ),
       responseTemplates = pulumi.Input.asOptionalInput<Map<String, String>>(
         responseTemplates,
       ),
       restApi = pulumi.Input.asInput<String>(restApi),
       selectionPattern = pulumi.Input.asOptionalInput<String>(
         selectionPattern,
       ),
       statusCode = pulumi.Input.asInput<String>(statusCode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHandling': ?contentHandling,
      'httpMethod': httpMethod,
      'region': ?region,
      'resourceId': resourceId,
      'responseParameters': ?responseParameters,
      'responseTemplates': ?responseTemplates,
      'restApi': restApi,
      'selectionPattern': ?selectionPattern,
      'statusCode': statusCode,
    };
  }

  factory IntegrationResponseArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationResponseArgs(
      contentHandling: map['contentHandling'] == null
          ? null
          : map['contentHandling'] as String,
      httpMethod: map['httpMethod'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
      responseParameters: map['responseParameters'] == null
          ? null
          : (map['responseParameters'] as Map).cast<String, String>(),
      responseTemplates: map['responseTemplates'] == null
          ? null
          : (map['responseTemplates'] as Map).cast<String, String>(),
      restApi: map['restApi'] as String,
      selectionPattern: map['selectionPattern'] == null
          ? null
          : map['selectionPattern'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}
