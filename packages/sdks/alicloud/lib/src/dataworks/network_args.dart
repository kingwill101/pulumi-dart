// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataworks_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_dataworks_network_network_args_doc}
class NetworkArgs {
  /// The ID of the resource group.
  final pulumi.Input<String> dwResourceGroupId;
  /// Virtual Private Cloud ID of network resources
  final pulumi.Input<String> vpcId;
  /// The vSwitch ID of the network resource.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [NetworkArgs].
  /// [dwResourceGroupId] The ID of the resource group.
  /// [vpcId] Virtual Private Cloud ID of network resources
  /// [vswitchId] The vSwitch ID of the network resource.
  NetworkArgs({
    required pulumi.Output<String> dwResourceGroupId,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vswitchId,
  }) :
      dwResourceGroupId = pulumi.Input.asInput<String>(dwResourceGroupId),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dwResourceGroupId': dwResourceGroupId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      dwResourceGroupId: pulumi.Output.create<String>(map['dwResourceGroupId'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

