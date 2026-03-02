// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gwlb_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_gwlb_listener_listener_args_doc}
class ListenerArgs {
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The description of the listener.
  ///
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  final pulumi.Input<String>? listenerDescription;
  /// The GWLB instance ID.
  final pulumi.Input<String> loadBalancerId;
  /// The server group ID.
  final pulumi.Input<String> serverGroupId;
  /// The tags. You can specify at most 20 tags in each call.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ListenerArgs].
  /// [dryRun] Specifies whether to perform a dry run, without performing the actual request. Valid values:
  /// [listenerDescription] The description of the listener.
  /// [loadBalancerId] The GWLB instance ID.
  /// [serverGroupId] The server group ID.
  /// [tags] The tags. You can specify at most 20 tags in each call.
  ListenerArgs({
    this.dryRun,
    this.listenerDescription,
    required this.loadBalancerId,
    required this.serverGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'listenerDescription': ?listenerDescription,
      'loadBalancerId': loadBalancerId,
      'serverGroupId': serverGroupId,
      'tags': ?tags,
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      listenerDescription: map['listenerDescription'] == null ? null : (map['listenerDescription']! as String).input(),
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      serverGroupId: (map['serverGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

