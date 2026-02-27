// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPartition.
class GetPartitionArgs {
  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final pulumi.Input<String>? id;

  GetPartitionArgs({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetPartitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartitionArgs(
      id: pulumi.Input.asOptionalInput<String>(map['id']),
    );
  }
}
