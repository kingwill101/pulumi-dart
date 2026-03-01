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
  GetLambdaFunctionAssociationArgs({
    required String functionArn,
    required String instanceId,
    String? region,
  }) : functionArn = pulumi.Input.asInput<String>(functionArn),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
      'instanceId': instanceId,
      'region': ?region,
    };
  }

  factory GetLambdaFunctionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetLambdaFunctionAssociationArgs(
      functionArn: map['functionArn'] as String,
      instanceId: map['instanceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
