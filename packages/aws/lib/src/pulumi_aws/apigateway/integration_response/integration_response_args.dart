// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IntegrationResponse.
class IntegrationResponseArgs {
  /// How to handle request payload content type conversions. Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`. If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.
  final Input<String>? contentHandling;

  /// HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`).
  final Input<String> httpMethod;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// API resource ID.
  final Input<String> resourceId;

  /// Map of response parameters that can be read from the backend response. For example: <span pulumi-lang-nodejs="`responseParameters " pulumi-lang-dotnet="`ResponseParameters " pulumi-lang-go="`responseParameters " pulumi-lang-python="`response_parameters " pulumi-lang-yaml="`responseParameters " pulumi-lang-java="`responseParameters ">`response_parameters </span>= { "method.response.header.X-Some-Header" = "integration.response.header.X-Some-Other-Header" }`.
  final Input<Map<String, String>>? responseParameters;

  /// Map of templates used to transform the integration response body.
  final Input<Map<String, String>>? responseTemplates;

  /// ID of the associated REST API.
  final Input<String> restApi;

  /// Regular expression pattern used to choose an integration response based on the response from the backend. Omit configuring this to make the integration the default one. If the backend is an `AWS` Lambda function, the AWS Lambda function error header is matched. For all other `HTTP` and `AWS` backends, the HTTP status code is matched.
  final Input<String>? selectionPattern;

  /// HTTP status code.
  ///
  /// The following arguments are optional:
  final Input<String> statusCode;

  IntegrationResponseArgs({
    this.contentHandling,
    required this.httpMethod,
    this.region,
    required this.resourceId,
    this.responseParameters,
    this.responseTemplates,
    required this.restApi,
    this.selectionPattern,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentHandlingValue = contentHandling;
    if (contentHandlingValue != null) {
      map['contentHandling'] = contentHandlingValue;
    }
    map['httpMethod'] = httpMethod;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    final responseParametersValue = responseParameters;
    if (responseParametersValue != null) {
      map['responseParameters'] = responseParametersValue;
    }
    final responseTemplatesValue = responseTemplates;
    if (responseTemplatesValue != null) {
      map['responseTemplates'] = responseTemplatesValue;
    }
    map['restApi'] = restApi;
    final selectionPatternValue = selectionPattern;
    if (selectionPatternValue != null) {
      map['selectionPattern'] = selectionPatternValue;
    }
    map['statusCode'] = statusCode;
    return map;
  }

  factory IntegrationResponseArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationResponseArgs(
      contentHandling: Input.asOptionalInput<String>(map['contentHandling']),
      httpMethod: Input.asInput<String>(map['httpMethod']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
      responseParameters:
          Input.asOptionalInput<Map<String, String>>(map['responseParameters']),
      responseTemplates:
          Input.asOptionalInput<Map<String, String>>(map['responseTemplates']),
      restApi: Input.asInput<String>(map['restApi']),
      selectionPattern: Input.asOptionalInput<String>(map['selectionPattern']),
      statusCode: Input.asInput<String>(map['statusCode']),
    );
  }
}
