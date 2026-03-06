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
  const RequestValidatorState({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApi: (() { final guardedValue = map['restApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validateRequestBody: (() { final guardedValue = map['validateRequestBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validateRequestParameters: (() { final guardedValue = map['validateRequestParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

