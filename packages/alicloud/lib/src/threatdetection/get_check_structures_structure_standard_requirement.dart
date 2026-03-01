// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_check_structures_structure_standard_requirement_section.dart';

class GetCheckStructuresStructureStandardRequirement {
  /// The ID of the section for the check item.
  final int id;
  /// The information about the sections of check items.
  final List<GetCheckStructuresStructureStandardRequirementSection> sections;
  /// The display name of the standard for the check item.
  final String showName;
  /// The total number of check items for the requirement.
  final int totalCheckCount;

  /// Creates a new [GetCheckStructuresStructureStandardRequirement].
  /// [id] The ID of the section for the check item.
  /// [sections] The information about the sections of check items.
  /// [showName] The display name of the standard for the check item.
  /// [totalCheckCount] The total number of check items for the requirement.
  GetCheckStructuresStructureStandardRequirement({
    required this.id,
    required this.sections,
    required this.showName,
    required this.totalCheckCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sections': pulumi.Input.encodeList<GetCheckStructuresStructureStandardRequirementSection, Map<String, dynamic>>(sections, (value) => value.toMap()),
      'showName': showName,
      'totalCheckCount': totalCheckCount,
    };
  }

  factory GetCheckStructuresStructureStandardRequirement.fromMap(Map<String, dynamic> map) {
    return GetCheckStructuresStructureStandardRequirement(
      id: map['id'] as int,
      sections: pulumi.Input.decodeList<GetCheckStructuresStructureStandardRequirementSection>(map['sections'], (value) => GetCheckStructuresStructureStandardRequirementSection.fromMap((value as Map).cast<String, dynamic>())),
      showName: map['showName'] as String,
      totalCheckCount: map['totalCheckCount'] as int,
    );
  }
}

