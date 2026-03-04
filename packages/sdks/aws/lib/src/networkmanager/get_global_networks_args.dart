// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_global_networks_get_global_networks_args_doc}
/// Arguments for getGlobalNetworks.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_global_networks_get_global_networks_args_doc}
class GetGlobalNetworksArgs {
  /// Restricts the list to the global networks with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetGlobalNetworksArgs].
  /// [tags] Restricts the list to the global networks with these tags.
  GetGlobalNetworksArgs({this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tags': ?tags};
  }

  factory GetGlobalNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworksArgs(
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
