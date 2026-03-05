// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_check_structures_structure_standard.dart';

class GetCheckStructuresStructure {
  /// The type of the check item.- **RISK**: security risk.- **IDENTITY_PERMISSION**: Cloud Infrastructure Entitlement Management (CIEM).- **COMPLIANCE**: security compliance.
  final pulumi.Input<String> standardType;
  /// The structure information about the check items of the business type.
  final pulumi.Input<List<GetCheckStructuresStructureStandard>> standards;

  /// Creates a new [GetCheckStructuresStructure].
  /// [standardType] The type of the check item.- **RISK**: security risk.- **IDENTITY_PERMISSION**: Cloud Infrastructure Entitlement Management (CIEM).- **COMPLIANCE**: security compliance.
  /// [standards] The structure information about the check items of the business type.
  GetCheckStructuresStructure({
    required this.standardType,
    required this.standards,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'standardType': standardType,
      'standards': pulumi.Input.mapInputValue<List<GetCheckStructuresStructureStandard>, List<Map<String, dynamic>>>(standards, (value) => pulumi.Input.encodeList<GetCheckStructuresStructureStandard, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCheckStructuresStructure.fromMap(Map<String, dynamic> map) {
    return GetCheckStructuresStructure(
      standardType: pulumi.Input.fromValue(map['standardType'] as String),
      standards: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCheckStructuresStructureStandard>(map['standards']!, (value) => GetCheckStructuresStructureStandard.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

