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
    required this.dwResourceGroupId,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dwResourceGroupId': dwResourceGroupId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      dwResourceGroupId: (map['dwResourceGroupId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

