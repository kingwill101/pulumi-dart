// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_url_cors/function_url_cors.dart';

/// The set of arguments for FunctionUrl.
class FunctionUrlArgs {
  /// Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  final pulumi.Input<String> authorizationType;

  /// Cross-origin resource sharing (CORS) settings for the function URL. See below.
  final pulumi.Input<FunctionUrlCors>? cors;

  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;

  /// How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  final pulumi.Input<String>? invokeMode;

  /// Alias name or `$LATEST`.
  final pulumi.Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  FunctionUrlArgs({
    required this.authorizationType,
    this.cors,
    required this.functionName,
    this.invokeMode,
    this.qualifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationType'] = authorizationType;
    final corsValue = cors;
    if (corsValue != null) {
      map['cors'] = pulumi.Input.mapOptionalInputValue<FunctionUrlCors,
          Map<String, dynamic>>(corsValue, (value) => value.toMap());
    }
    map['functionName'] = functionName;
    final invokeModeValue = invokeMode;
    if (invokeModeValue != null) {
      map['invokeMode'] = invokeModeValue;
    }
    final qualifierValue = qualifier;
    if (qualifierValue != null) {
      map['qualifier'] = qualifierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory FunctionUrlArgs.fromMap(Map<String, dynamic> map) {
    return FunctionUrlArgs(
      authorizationType: pulumi.Input.asInput<String>(map['authorizationType']),
      cors: pulumi.Input.asOptionalInput<FunctionUrlCors>(map['cors']),
      functionName: pulumi.Input.asInput<String>(map['functionName']),
      invokeMode: pulumi.Input.asOptionalInput<String>(map['invokeMode']),
      qualifier: pulumi.Input.asOptionalInput<String>(map['qualifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
