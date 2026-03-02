// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupPrivatePoolOptions {
  /// The node group specific private pool resource match criteria. Valid values: `Open`, `Target`, `None`.
  final pulumi.Input<String>? matchCriteria;
  /// The node group specific private pool resource ids.
  final pulumi.Input<List<String>>? privatePoolIds;

  /// Creates a new [ClusterNodeGroupPrivatePoolOptions].
  /// [matchCriteria] The node group specific private pool resource match criteria. Valid values: `Open`, `Target`, `None`.
  /// [privatePoolIds] The node group specific private pool resource ids.
  ClusterNodeGroupPrivatePoolOptions({
    this.matchCriteria,
    this.privatePoolIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchCriteria': ?matchCriteria,
      'privatePoolIds': ?privatePoolIds,
    };
  }

  factory ClusterNodeGroupPrivatePoolOptions.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupPrivatePoolOptions(
      matchCriteria: map['matchCriteria'] == null ? null : (map['matchCriteria']! as String).input(),
      privatePoolIds: map['privatePoolIds'] == null ? null : ((map['privatePoolIds']! as List).cast<String>()).input(),
    );
  }
}

