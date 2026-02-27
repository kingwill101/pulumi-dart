// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CostAllocationTag.
class CostAllocationTagArgs {
  /// The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  final pulumi.Input<String> status;

  /// The key for the cost allocation tag.
  final pulumi.Input<String> tagKey;

  CostAllocationTagArgs({
    required this.status,
    required this.tagKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['tagKey'] = tagKey;
    return map;
  }

  factory CostAllocationTagArgs.fromMap(Map<String, dynamic> map) {
    return CostAllocationTagArgs(
      status: pulumi.Input.asInput<String>(map['status']),
      tagKey: pulumi.Input.asInput<String>(map['tagKey']),
    );
  }
}
