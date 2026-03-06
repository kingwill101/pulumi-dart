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
  const CostAllocationTagArgs({
    required this.status,
    required this.tagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'tagKey': tagKey,
    };
  }

  factory CostAllocationTagArgs.fromMap(Map<String, dynamic> map) {
    return CostAllocationTagArgs(
      status: pulumi.Input.fromValue(map['status'] as String),
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
    );
  }
}

