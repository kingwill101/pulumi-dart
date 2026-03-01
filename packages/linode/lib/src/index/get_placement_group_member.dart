// ignore_for_file: unused_element, unnecessary_cast


class GetPlacementGroupMember {
  /// Whether this Linode is currently compliant with the group's placement group type.
  final bool isCompliant;
  /// The ID of the Linode.
  final int linodeId;

  /// Creates a new [GetPlacementGroupMember].
  /// [isCompliant] Whether this Linode is currently compliant with the group's placement group type.
  /// [linodeId] The ID of the Linode.
  GetPlacementGroupMember({
    required this.isCompliant,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompliant': isCompliant,
      'linodeId': linodeId,
    };
  }

  factory GetPlacementGroupMember.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupMember(
      isCompliant: map['isCompliant'] as bool,
      linodeId: map['linodeId'] as int,
    );
  }
}

