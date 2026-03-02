// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hierarchy_information.dart';

/// Child configuration filter.
class ChildConfigurationFilter {
  /// Filter to fetch all child configurations belonging to the given list of configuration types.
  final pulumi.Input<List<String>>? childConfigurationTypes;
  /// The list of child configuration hierarchy customer wants to filter for the given configuration.
  final pulumi.Input<List<HierarchyInformation>>? hierarchyInformations;

  /// Creates a new [ChildConfigurationFilter].
  /// [childConfigurationTypes] Filter to fetch all child configurations belonging to the given list of configuration types.
  /// [hierarchyInformations] The list of child configuration hierarchy customer wants to filter for the given configuration.
  ChildConfigurationFilter({
    this.childConfigurationTypes,
    this.hierarchyInformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childConfigurationTypes': ?childConfigurationTypes,
      'hierarchyInformations': ?pulumi.Input.mapOptionalInputValue<List<HierarchyInformation>, List<Map<String, dynamic>>>(hierarchyInformations, (value) => pulumi.Input.encodeList<HierarchyInformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChildConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return ChildConfigurationFilter(
      childConfigurationTypes: map['childConfigurationTypes'] == null ? null : ((map['childConfigurationTypes'] as List).cast<String>()).input(),
      hierarchyInformations: map['hierarchyInformations'] == null ? null : (pulumi.Input.decodeList<HierarchyInformation>(map['hierarchyInformations'], (value) => HierarchyInformation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

