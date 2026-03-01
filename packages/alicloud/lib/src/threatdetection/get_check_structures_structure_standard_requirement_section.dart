// ignore_for_file: unused_element, unnecessary_cast


class GetCheckStructuresStructureStandardRequirementSection {
  /// The ID of the section for the check item.
  final int id;
  /// The display name of the standard for the check item.
  final String showName;

  /// Creates a new [GetCheckStructuresStructureStandardRequirementSection].
  /// [id] The ID of the section for the check item.
  /// [showName] The display name of the standard for the check item.
  GetCheckStructuresStructureStandardRequirementSection({
    required this.id,
    required this.showName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'showName': showName,
    };
  }

  factory GetCheckStructuresStructureStandardRequirementSection.fromMap(Map<String, dynamic> map) {
    return GetCheckStructuresStructureStandardRequirementSection(
      id: map['id'] as int,
      showName: map['showName'] as String,
    );
  }
}

