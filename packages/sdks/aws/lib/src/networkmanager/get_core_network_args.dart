// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_core_network_get_core_network_args_doc}
/// Arguments for getCoreNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_core_network_get_core_network_args_doc}
class GetCoreNetworkArgs {
  /// ID of the core network.
  final pulumi.Input<String> coreNetworkId;

  /// Creates a new [GetCoreNetworkArgs].
  /// [coreNetworkId] ID of the core network.
  const GetCoreNetworkArgs({
    required this.coreNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
    };
  }

  factory GetCoreNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkArgs(
      coreNetworkId: pulumi.Input.fromValue(map['coreNetworkId'] as String),
    );
  }
}
