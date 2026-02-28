// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costexplorer_cost_allocation_tag_cost_allocation_tag_args_doc}
/// The set of arguments for CostAllocationTag.
/// {@endtemplate}
/// {@macro pulumi_costexplorer_cost_allocation_tag_cost_allocation_tag_args_doc}
class CostAllocationTagArgs {
  /// The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  final pulumi.Input<String> status;

  /// The key for the cost allocation tag.
  final pulumi.Input<String> tagKey;

  /// Creates a new [CostAllocationTagArgs].
  /// [status] The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  /// [tagKey] The key for the cost allocation tag.
  CostAllocationTagArgs({
    required String status,
    required String tagKey,
  })  : status = pulumi.Input.asInput<String>(status),
        tagKey = pulumi.Input.asInput<String>(tagKey);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['tagKey'] = tagKey;
    return map;
  }

  factory CostAllocationTagArgs.fromMap(Map<String, dynamic> map) {
    return CostAllocationTagArgs(
      status: map['status'] as String,
      tagKey: map['tagKey'] as String,
    );
  }
}
