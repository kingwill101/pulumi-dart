// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hierarchy_information.dart';

/// Child configuration filter.
class ChildConfigurationFilter {
  /// Filter to fetch all child configurations belonging to the given list of configuration types.
  final List<String>? childConfigurationTypes;
  /// The list of child configuration hierarchy customer wants to filter for the given configuration.
  final List<HierarchyInformation>? hierarchyInformations;

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
      'hierarchyInformations': ?hierarchyInformations == null ? null : pulumi.Input.encodeList<HierarchyInformation, Map<String, dynamic>>(hierarchyInformations!, (value) => value.toMap()),
    };
  }

  factory ChildConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return ChildConfigurationFilter(
      childConfigurationTypes: map['childConfigurationTypes'] == null ? null : (map['childConfigurationTypes'] as List).cast<String>(),
      hierarchyInformations: map['hierarchyInformations'] == null ? null : pulumi.Input.decodeList<HierarchyInformation>(map['hierarchyInformations'], (value) => HierarchyInformation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

