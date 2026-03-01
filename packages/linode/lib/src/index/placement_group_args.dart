// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_placement_group_placement_group_args_doc}
/// The set of arguments for PlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_index_placement_group_placement_group_args_doc}
class PlacementGroupArgs {
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final pulumi.Input<String> label;
  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  final pulumi.Input<String>? placementGroupPolicy;
  /// The placement group type to use when placing Linodes in this group.
  final pulumi.Input<String> placementGroupType;
  /// The region of the Placement Group.
  final pulumi.Input<String> region;

  /// Creates a new [PlacementGroupArgs].
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [placementGroupPolicy] Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  /// [placementGroupType] The placement group type to use when placing Linodes in this group.
  /// [region] The region of the Placement Group.
  PlacementGroupArgs({
    required String label,
    String? placementGroupPolicy,
    required String placementGroupType,
    required String region,
  }) :
      label = pulumi.Input.asInput<String>(label),
      placementGroupPolicy = pulumi.Input.asOptionalInput<String>(placementGroupPolicy),
      placementGroupType = pulumi.Input.asInput<String>(placementGroupType),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'placementGroupPolicy': ?placementGroupPolicy,
      'placementGroupType': placementGroupType,
      'region': region,
    };
  }

  factory PlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PlacementGroupArgs(
      label: map['label'] as String,
      placementGroupPolicy: map['placementGroupPolicy'] == null ? null : map['placementGroupPolicy'] as String,
      placementGroupType: map['placementGroupType'] as String,
      region: map['region'] as String,
    );
  }
}

