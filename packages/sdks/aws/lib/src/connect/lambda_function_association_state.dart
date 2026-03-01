// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LambdaFunctionAssociation resources.
class LambdaFunctionAssociationState {
  /// Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier.
  final pulumi.Input<String>? functionArn;
  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final pulumi.Input<String>? instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LambdaFunctionAssociationState].
  /// [functionArn] Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier.
  /// [instanceId] The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LambdaFunctionAssociationState({
    pulumi.Output<String>? functionArn,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? region,
  }) :
      functionArn = pulumi.Input.asOptionalInput<String>(functionArn),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': ?functionArn,
      'instanceId': ?instanceId,
      'region': ?region,
    };
  }

  factory LambdaFunctionAssociationState.fromMap(Map<String, dynamic> map) {
    return LambdaFunctionAssociationState(
      functionArn: map['functionArn'] == null ? null : pulumi.Output.create<String>(map['functionArn'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

