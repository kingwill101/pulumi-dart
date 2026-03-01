// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationResponse resources.
class IntegrationResponseState {
  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  final pulumi.Input<String>? contentHandling;
  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  final pulumi.Input<String>? httpMethod;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// API resource ID.
  final pulumi.Input<String>? resourceId;
  /// Map of response parameters that can be read from the backend response. For example: `response_parameters = { "method.response.header.X-Some-Header" = "integration.response.header.X-Some-Other-Header" }`.
  final pulumi.Input<Map<String, String>>? responseParameters;
  /// Map of templates used to transform the integration response body.
  final pulumi.Input<Map<String, String>>? responseTemplates;
  /// ID of the associated REST API.
  final pulumi.Input<String>? restApi;
  /// Regular expression pattern used to choose an integration response based on the response from the backend. Omit configuring this to make the integration the default one. If the backend is an `AWS` Lambda function, the AWS Lambda function error header is matched. For all other `HTTP` and `AWS` backends, the HTTP status code is matched.
  final pulumi.Input<String>? selectionPattern;
  /// HTTP status code.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? statusCode;

  /// Creates a new [IntegrationResponseState].
  /// [contentHandling] How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  /// [httpMethod] HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] API resource ID.
  /// [responseParameters] Map of response parameters that can be read from the backend response. For example: `response_parameters = { "method.response.header.X-Some-Header" = "integration.response.header.X-Some-Other-Header" }`.
  /// [responseTemplates] Map of templates used to transform the integration response body.
  /// [restApi] ID of the associated REST API.
  /// [selectionPattern] Regular expression pattern used to choose an integration response based on the response from the backend. Omit configuring this to make the integration the default one. If the backend is an `AWS` Lambda function, the AWS Lambda function error header is matched. For all other `HTTP` and `AWS` backends, the HTTP status code is matched.
  /// [statusCode] HTTP status code.
  IntegrationResponseState({
    pulumi.Output<String>? contentHandling,
    pulumi.Output<String>? httpMethod,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
    pulumi.Output<Map<String, String>>? responseParameters,
    pulumi.Output<Map<String, String>>? responseTemplates,
    pulumi.Output<String>? restApi,
    pulumi.Output<String>? selectionPattern,
    pulumi.Output<String>? statusCode,
  }) :
      contentHandling = pulumi.Input.asOptionalInput<String>(contentHandling),
      httpMethod = pulumi.Input.asOptionalInput<String>(httpMethod),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      responseParameters = pulumi.Input.asOptionalInput<Map<String, String>>(responseParameters),
      responseTemplates = pulumi.Input.asOptionalInput<Map<String, String>>(responseTemplates),
      restApi = pulumi.Input.asOptionalInput<String>(restApi),
      selectionPattern = pulumi.Input.asOptionalInput<String>(selectionPattern),
      statusCode = pulumi.Input.asOptionalInput<String>(statusCode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentHandling': ?contentHandling,
      'httpMethod': ?httpMethod,
      'region': ?region,
      'resourceId': ?resourceId,
      'responseParameters': ?responseParameters,
      'responseTemplates': ?responseTemplates,
      'restApi': ?restApi,
      'selectionPattern': ?selectionPattern,
      'statusCode': ?statusCode,
    };
  }

  factory IntegrationResponseState.fromMap(Map<String, dynamic> map) {
    return IntegrationResponseState(
      contentHandling: map['contentHandling'] == null ? null : pulumi.Output.create<String>(map['contentHandling'] as String),
      httpMethod: map['httpMethod'] == null ? null : pulumi.Output.create<String>(map['httpMethod'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      responseParameters: map['responseParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['responseParameters'] as Map).cast<String, String>()),
      responseTemplates: map['responseTemplates'] == null ? null : pulumi.Output.create<Map<String, String>>((map['responseTemplates'] as Map).cast<String, String>()),
      restApi: map['restApi'] == null ? null : pulumi.Output.create<String>(map['restApi'] as String),
      selectionPattern: map['selectionPattern'] == null ? null : pulumi.Output.create<String>(map['selectionPattern'] as String),
      statusCode: map['statusCode'] == null ? null : pulumi.Output.create<String>(map['statusCode'] as String),
    );
  }
}

