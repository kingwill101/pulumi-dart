// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLambdaFunctionAssociation.
class GetLambdaFunctionAssociationArgs {
  /// ARN of the Lambda Function, omitting any version or alias qualifier.
  final Input<String> functionArn;

  /// Identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final Input<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetLambdaFunctionAssociationArgs({
    required this.functionArn,
    required this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionArn'] = functionArn;
    map['instanceId'] = instanceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetLambdaFunctionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetLambdaFunctionAssociationArgs(
      functionArn: Input.asInput<String>(map['functionArn']),
      instanceId: Input.asInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
