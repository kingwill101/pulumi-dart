// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V3VpcBinding resources.
class V3VpcBindingState {
  /// Function Name
  final pulumi.Input<String>? functionName;
  /// VPC instance ID
  final pulumi.Input<String>? vpcId;

  /// Creates a new [V3VpcBindingState].
  /// [functionName] Function Name
  /// [vpcId] VPC instance ID
  V3VpcBindingState({
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? vpcId,
  }) :
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'vpcId': ?vpcId,
    };
  }

  factory V3VpcBindingState.fromMap(Map<String, dynamic> map) {
    return V3VpcBindingState(
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

