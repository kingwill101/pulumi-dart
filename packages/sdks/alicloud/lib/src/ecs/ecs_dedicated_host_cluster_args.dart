// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_ecs_dedicated_host_cluster_ecs_dedicated_host_cluster_args_doc}
/// The set of arguments for EcsDedicatedHostCluster.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_dedicated_host_cluster_ecs_dedicated_host_cluster_args_doc}
class EcsDedicatedHostClusterArgs {
  /// The name of the dedicated host cluster. The name must be `2` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It cannot contain `http://` or `https://`.
  final pulumi.Input<String>? dedicatedHostClusterName;
  /// The description of the dedicated host cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the zone in which to create the dedicated host cluster.
  final pulumi.Input<String> zoneId;

  /// Creates a new [EcsDedicatedHostClusterArgs].
  /// [dedicatedHostClusterName] The name of the dedicated host cluster. The name must be `2` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It cannot contain `http://` or `https://`.
  /// [description] The description of the dedicated host cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  /// [dryRun] The dry run.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The ID of the zone in which to create the dedicated host cluster.
  EcsDedicatedHostClusterArgs({
    this.dedicatedHostClusterName,
    this.description,
    this.dryRun,
    this.tags,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostClusterName': ?dedicatedHostClusterName,
      'description': ?description,
      'dryRun': ?dryRun,
      'tags': ?tags,
      'zoneId': zoneId,
    };
  }

  factory EcsDedicatedHostClusterArgs.fromMap(Map<String, dynamic> map) {
    return EcsDedicatedHostClusterArgs(
      dedicatedHostClusterName: (() { final guardedValue = map['dedicatedHostClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

