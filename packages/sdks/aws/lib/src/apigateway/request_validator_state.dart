// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RequestValidator resources.
class RequestValidatorState {
  /// Name of the request validator
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated Rest API
  final pulumi.Input<String>? restApi;
  /// Boolean whether to validate request body. Defaults to `false`.
  final pulumi.Input<bool>? validateRequestBody;
  /// Boolean whether to validate request parameters. Defaults to `false`.
  final pulumi.Input<bool>? validateRequestParameters;

  /// Creates a new [RequestValidatorState].
  /// [name] Name of the request validator
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated Rest API
  /// [validateRequestBody] Boolean whether to validate request body. Defaults to `false`.
  /// [validateRequestParameters] Boolean whether to validate request parameters. Defaults to `false`.
  RequestValidatorState({
    this.name,
    this.region,
    this.restApi,
    this.validateRequestBody,
    this.validateRequestParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'restApi': ?restApi,
      'validateRequestBody': ?validateRequestBody,
      'validateRequestParameters': ?validateRequestParameters,
    };
  }

  factory RequestValidatorState.fromMap(Map<String, dynamic> map) {
    return RequestValidatorState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      restApi: map['restApi'] == null ? null : (map['restApi'] as String).input(),
      validateRequestBody: map['validateRequestBody'] == null ? null : (map['validateRequestBody'] as bool).input(),
      validateRequestParameters: map['validateRequestParameters'] == null ? null : (map['validateRequestParameters'] as bool).input(),
    );
  }
}

