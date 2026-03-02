// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_global_network_global_network_args_doc}
/// The set of arguments for GlobalNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_global_network_global_network_args_doc}
class GlobalNetworkArgs {
  /// Description of the Global Network.
  final pulumi.Input<String>? description;
  /// Key-value tags for the Global Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GlobalNetworkArgs].
  /// [description] Description of the Global Network.
  /// [tags] Key-value tags for the Global Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  GlobalNetworkArgs({
    this.description,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'tags': ?tags,
    };
  }

  factory GlobalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

