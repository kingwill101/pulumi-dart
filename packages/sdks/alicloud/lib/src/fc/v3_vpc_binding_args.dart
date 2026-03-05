// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_v3_vpc_binding_v3_vpc_binding_args_doc}
/// The set of arguments for V3VpcBinding.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_vpc_binding_v3_vpc_binding_args_doc}
class V3VpcBindingArgs {
  /// Function Name
  final pulumi.Input<String> functionName;
  /// VPC instance ID
  final pulumi.Input<String>? vpcId;

  /// Creates a new [V3VpcBindingArgs].
  /// [functionName] Function Name
  /// [vpcId] VPC instance ID
  V3VpcBindingArgs({
    required this.functionName,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'vpcId': ?vpcId,
    };
  }

  factory V3VpcBindingArgs.fromMap(Map<String, dynamic> map) {
    return V3VpcBindingArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

