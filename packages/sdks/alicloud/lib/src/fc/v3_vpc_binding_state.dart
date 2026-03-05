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
    this.functionName,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'vpcId': ?vpcId,
    };
  }

  factory V3VpcBindingState.fromMap(Map<String, dynamic> map) {
    return V3VpcBindingState(
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

