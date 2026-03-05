// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_invocation_get_invocation_args_doc}
/// Arguments for getInvocation.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_invocation_get_invocation_args_doc}
class GetInvocationArgs {
  /// Name of the Lambda function.
  final pulumi.Input<String> functionName;
  /// String in JSON format that is passed as payload to the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> input;
  /// Qualifier (a.k.a version) of the Lambda function. Defaults to `$LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tenant Id to serve invocations from specified tenant.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetInvocationArgs].
  /// [functionName] Name of the Lambda function.
  /// [input] String in JSON format that is passed as payload to the Lambda function.
  /// [qualifier] Qualifier (a.k.a version) of the Lambda function. Defaults to `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tenantId] Tenant Id to serve invocations from specified tenant.
  GetInvocationArgs({
    required this.functionName,
    required this.input,
    this.qualifier,
    this.region,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'input': input,
      'qualifier': ?qualifier,
      'region': ?region,
      'tenantId': ?tenantId,
    };
  }

  factory GetInvocationArgs.fromMap(Map<String, dynamic> map) {
    return GetInvocationArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      input: pulumi.Input.fromValue(map['input'] as String),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

