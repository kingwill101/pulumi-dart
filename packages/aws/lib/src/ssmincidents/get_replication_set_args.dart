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
    Map<String, String>? tags,
  }) : tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetReplicationSetArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationSetArgs(
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
