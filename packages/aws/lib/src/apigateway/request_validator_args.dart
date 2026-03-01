// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_request_validator_request_validator_args_doc}
/// The set of arguments for RequestValidator.
/// {@endtemplate}
/// {@macro pulumi_apigateway_request_validator_request_validator_args_doc}
class RequestValidatorArgs {
  /// Name of the request validator
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the associated Rest API
  final pulumi.Input<String> restApi;

  /// Boolean whether to validate request body. Defaults to `false`.
  final pulumi.Input<bool>? validateRequestBody;

  /// Boolean whether to validate request parameters. Defaults to `false`.
  final pulumi.Input<bool>? validateRequestParameters;

  /// Creates a new [RequestValidatorArgs].
  /// [name] Name of the request validator
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated Rest API
  /// [validateRequestBody] Boolean whether to validate request body. Defaults to `false`.
  /// [validateRequestParameters] Boolean whether to validate request parameters. Defaults to `false`.
  RequestValidatorArgs({
    String? name,
    String? region,
    required String restApi,
    bool? validateRequestBody,
    bool? validateRequestParameters,
  }) : name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       restApi = pulumi.Input.asInput<String>(restApi),
       validateRequestBody = pulumi.Input.asOptionalInput<bool>(
         validateRequestBody,
       ),
       validateRequestParameters = pulumi.Input.asOptionalInput<bool>(
         validateRequestParameters,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'restApi': restApi,
      'validateRequestBody': ?validateRequestBody,
      'validateRequestParameters': ?validateRequestParameters,
    };
  }

  factory RequestValidatorArgs.fromMap(Map<String, dynamic> map) {
    return RequestValidatorArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restApi: map['restApi'] as String,
      validateRequestBody: map['validateRequestBody'] == null
          ? null
          : map['validateRequestBody'] as bool,
      validateRequestParameters: map['validateRequestParameters'] == null
          ? null
          : map['validateRequestParameters'] as bool,
    );
  }
}
