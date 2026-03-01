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
  GetGlobalNetworksArgs({
    pulumi.Output<Map<String, String>>? tags,
  }) :
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory GetGlobalNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworksArgs(
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

