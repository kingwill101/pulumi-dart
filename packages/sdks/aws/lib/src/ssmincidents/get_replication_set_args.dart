// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmincidents_get_replication_set_get_replication_set_args_doc}
/// Arguments for getReplicationSet.
/// {@endtemplate}
/// {@macro pulumi_ssmincidents_get_replication_set_get_replication_set_args_doc}
class GetReplicationSetArgs {
  /// All tags applied to the replication set.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetReplicationSetArgs].
  /// [tags] All tags applied to the replication set.
  GetReplicationSetArgs({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory GetReplicationSetArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationSetArgs(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

