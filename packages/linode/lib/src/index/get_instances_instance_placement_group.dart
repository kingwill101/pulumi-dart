// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstancePlacementGroup {
  /// The ID of the Placement Group in the Linode API.
  final int id;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final String label;
  /// Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  final String placementGroupPolicy;
  /// The placement group type to use when placing Linodes in this group.
  final String placementGroupType;

  /// Creates a new [GetInstancesInstancePlacementGroup].
  /// [id] The ID of the Placement Group in the Linode API.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [placementGroupPolicy] Whether Linodes must be able to become compliant during assignment. (Default `strict`)
  /// [placementGroupType] The placement group type to use when placing Linodes in this group.
  GetInstancesInstancePlacementGroup({
    required this.id,
    required this.label,
    required this.placementGroupPolicy,
    required this.placementGroupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'placementGroupPolicy': placementGroupPolicy,
      'placementGroupType': placementGroupType,
    };
  }

  factory GetInstancesInstancePlacementGroup.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstancePlacementGroup(
      id: map['id'] as int,
      label: map['label'] as String,
      placementGroupPolicy: map['placementGroupPolicy'] as String,
      placementGroupType: map['placementGroupType'] as String,
    );
  }
}

