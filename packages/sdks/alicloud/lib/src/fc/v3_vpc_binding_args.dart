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
    required pulumi.Output<String> functionName,
    pulumi.Output<String>? vpcId,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'vpcId': ?vpcId,
    };
  }

  factory V3VpcBindingArgs.fromMap(Map<String, dynamic> map) {
    return V3VpcBindingArgs(
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

