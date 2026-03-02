// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EcsDedicatedHostCluster resources.
class EcsDedicatedHostClusterState {
  /// The name of the dedicated host cluster. The name must be `2` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It cannot contain `http://` or `https://`.
  final pulumi.Input<String>? dedicatedHostClusterName;
  /// The description of the dedicated host cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the zone in which to create the dedicated host cluster.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [EcsDedicatedHostClusterState].
  /// [dedicatedHostClusterName] The name of the dedicated host cluster. The name must be `2` to `128` characters in length and can contain letters, digits, periods (.), underscores (_), and hyphens (-). It must start with a letter. It cannot contain `http://` or `https://`.
  /// [description] The description of the dedicated host cluster. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  /// [dryRun] The dry run.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The ID of the zone in which to create the dedicated host cluster.
  EcsDedicatedHostClusterState({
    this.dedicatedHostClusterName,
    this.description,
    this.dryRun,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostClusterName': ?dedicatedHostClusterName,
      'description': ?description,
      'dryRun': ?dryRun,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory EcsDedicatedHostClusterState.fromMap(Map<String, dynamic> map) {
    return EcsDedicatedHostClusterState(
      dedicatedHostClusterName: map['dedicatedHostClusterName'] == null ? null : (map['dedicatedHostClusterName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

