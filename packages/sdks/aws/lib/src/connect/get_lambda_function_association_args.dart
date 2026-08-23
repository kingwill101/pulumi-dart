// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_lambda_function_association_get_lambda_function_association_args_doc}
/// Arguments for getLambdaFunctionAssociation.
/// {@endtemplate}
/// {@macro pulumi_connect_get_lambda_function_association_get_lambda_function_association_args_doc}
class GetLambdaFunctionAssociationArgs {
  /// ARN of the Lambda Function, omitting any version or alias qualifier.
  final pulumi.Input<String> functionArn;
  /// Identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final pulumi.Input<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLambdaFunctionAssociationArgs].
  /// [functionArn] ARN of the Lambda Function, omitting any version or alias qualifier.
  /// [instanceId] Identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetLambdaFunctionAssociationArgs({
    required this.functionArn,
    required this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
      'instanceId': instanceId,
      'region': ?region,
    };
  }

  factory GetLambdaFunctionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetLambdaFunctionAssociationArgs(
      functionArn: pulumi.Input.fromValue(map['functionArn'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
