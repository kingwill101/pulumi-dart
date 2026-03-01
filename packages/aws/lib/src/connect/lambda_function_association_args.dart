// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_lambda_function_association_lambda_function_association_args_doc}
/// The set of arguments for LambdaFunctionAssociation.
/// {@endtemplate}
/// {@macro pulumi_connect_lambda_function_association_lambda_function_association_args_doc}
class LambdaFunctionAssociationArgs {
  /// Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier.
  final pulumi.Input<String> functionArn;
  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final pulumi.Input<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LambdaFunctionAssociationArgs].
  /// [functionArn] Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier.
  /// [instanceId] The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LambdaFunctionAssociationArgs({
    required String functionArn,
    required String instanceId,
    String? region,
  }) :
      functionArn = pulumi.Input.asInput<String>(functionArn),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
      'instanceId': instanceId,
      'region': ?region,
    };
  }

  factory LambdaFunctionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LambdaFunctionAssociationArgs(
      functionArn: map['functionArn'] as String,
      instanceId: map['instanceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

