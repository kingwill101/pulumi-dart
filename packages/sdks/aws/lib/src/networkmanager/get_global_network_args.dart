// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_global_network_get_global_network_args_doc}
/// Arguments for getGlobalNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_global_network_get_global_network_args_doc}
class GetGlobalNetworkArgs {
  /// ID of the specific global network to retrieve.
  final pulumi.Input<String> globalNetworkId;
  /// Map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetGlobalNetworkArgs].
  /// [globalNetworkId] ID of the specific global network to retrieve.
  /// [tags] Map of resource tags.
  GetGlobalNetworkArgs({
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'tags': ?tags,
    };
  }

  factory GetGlobalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkArgs(
      globalNetworkId: (map['globalNetworkId'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

