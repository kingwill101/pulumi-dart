// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RequestValidator.
class RequestValidatorArgs {
  /// Name of the request validator
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the associated Rest API
  final Input<String> restApi;

  /// Boolean whether to validate request body. Defaults to `false`.
  final Input<bool>? validateRequestBody;

  /// Boolean whether to validate request parameters. Defaults to `false`.
  final Input<bool>? validateRequestParameters;

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
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      restApi: Input.asInput<String>(map['restApi']),
      validateRequestBody:
          Input.asOptionalInput<bool>(map['validateRequestBody']),
      validateRequestParameters:
          Input.asOptionalInput<bool>(map['validateRequestParameters']),
    );
  }
}
