// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RequestValidator.
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

  RequestValidatorArgs({
    this.name,
    this.region,
    required this.restApi,
    this.validateRequestBody,
    this.validateRequestParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    final validateRequestBodyValue = validateRequestBody;
    if (validateRequestBodyValue != null) {
      map['validateRequestBody'] = validateRequestBodyValue;
    }
    final validateRequestParametersValue = validateRequestParameters;
    if (validateRequestParametersValue != null) {
      map['validateRequestParameters'] = validateRequestParametersValue;
    }
    return map;
  }

  factory RequestValidatorArgs.fromMap(Map<String, dynamic> map) {
    return RequestValidatorArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApi: pulumi.Input.asInput<String>(map['restApi']),
      validateRequestBody:
          pulumi.Input.asOptionalInput<bool>(map['validateRequestBody']),
      validateRequestParameters:
          pulumi.Input.asOptionalInput<bool>(map['validateRequestParameters']),
    );
  }
}
