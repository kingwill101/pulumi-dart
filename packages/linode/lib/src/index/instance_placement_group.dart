// ignore_for_file: unused_element, unnecessary_cast


class InstancePlacementGroup {
  final bool? compliantOnly;
  /// The ID of the Placement Group.
  final int id;
  /// The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  final String? label;
  /// Whether the Placement Group enforces strict compliance.
  final String? placementGroupPolicy;
  /// The placement group type enforced by the Placement Group.
  final String? placementGroupType;

  /// Creates a new [InstancePlacementGroup].
  /// [compliantOnly] Optional.
  /// [id] The ID of the Placement Group.
  /// [label] The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  /// [placementGroupPolicy] Whether the Placement Group enforces strict compliance.
  /// [placementGroupType] The placement group type enforced by the Placement Group.
  InstancePlacementGroup({
    this.compliantOnly,
    required this.id,
    this.label,
    this.placementGroupPolicy,
    this.placementGroupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compliantOnly': ?compliantOnly,
      'id': id,
      'label': ?label,
      'placementGroupPolicy': ?placementGroupPolicy,
      'placementGroupType': ?placementGroupType,
    };
  }

  factory InstancePlacementGroup.fromMap(Map<String, dynamic> map) {
    return InstancePlacementGroup(
      compliantOnly: map['compliantOnly'] == null ? null : map['compliantOnly'] as bool,
      id: map['id'] as int,
      label: map['label'] == null ? null : map['label'] as String,
      placementGroupPolicy: map['placementGroupPolicy'] == null ? null : map['placementGroupPolicy'] as String,
      placementGroupType: map['placementGroupType'] == null ? null : map['placementGroupType'] as String,
    );
  }
}

