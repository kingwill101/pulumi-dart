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
    this.functionArn,
    this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': ?functionArn,
      'instanceId': ?instanceId,
      'region': ?region,
    };
  }

  factory LambdaFunctionAssociationState.fromMap(Map<String, dynamic> map) {
    return LambdaFunctionAssociationState(
      functionArn: map['functionArn'] == null ? null : ((map['functionArn'] as String).input()).input(),
      instanceId: map['instanceId'] == null ? null : ((map['instanceId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

