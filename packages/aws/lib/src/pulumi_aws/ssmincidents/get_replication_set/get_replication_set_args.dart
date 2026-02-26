// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReplicationSet.
class GetReplicationSetArgs {
  /// All tags applied to the replication set.
  final Input<Map<String, String>>? tags;

  GetReplicationSetArgs({
    this.tags,
  });

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
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
