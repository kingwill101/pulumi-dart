// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_check_structures_structure_standard_requirement.dart';

class GetCheckStructuresStructureStandard {
  /// The ID of the section for the check item.
  final pulumi.Input<int> id;
  /// The standards of the check items.
  final pulumi.Input<List<GetCheckStructuresStructureStandardRequirement>> requirements;
  /// The display name of the standard for the check item.
  final pulumi.Input<String> showName;
  /// The standard type of the check item. Valid values:- **RISK**: security risk.- **IDENTITY_PERMISSION**: CIEM.- **COMPLIANCE**: security compliance.
  final pulumi.Input<String> type;

  /// Creates a new [GetCheckStructuresStructureStandard].
  /// [id] The ID of the section for the check item.
  /// [requirements] The standards of the check items.
  /// [showName] The display name of the standard for the check item.
  /// [type] The standard type of the check item. Valid values:- **RISK**: security risk.- **IDENTITY_PERMISSION**: CIEM.- **COMPLIANCE**: security compliance.
  GetCheckStructuresStructureStandard({
    required this.id,
    required this.requirements,
    required this.showName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'requirements': pulumi.Input.mapInputValue<List<GetCheckStructuresStructureStandardRequirement>, List<Map<String, dynamic>>>(requirements, (value) => pulumi.Input.encodeList<GetCheckStructuresStructureStandardRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'showName': showName,
      'type': type,
    };
  }

  factory GetCheckStructuresStructureStandard.fromMap(Map<String, dynamic> map) {
    return GetCheckStructuresStructureStandard(
      id: (map['id'] as int).input(),
      requirements: (pulumi.Input.decodeList<GetCheckStructuresStructureStandardRequirement>(map['requirements'], (value) => GetCheckStructuresStructureStandardRequirement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      showName: (map['showName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

