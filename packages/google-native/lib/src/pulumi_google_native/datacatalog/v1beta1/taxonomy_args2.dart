// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'taxonomy_activated_policy_types_item2.dart';

/// The set of arguments for Taxonomy.
class TaxonomyArgs2 {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  final Input<List<TaxonomyActivatedPolicyTypesItem2>>? activatedPolicyTypes;

  /// Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  final Input<String>? description;

  /// User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  final Input<String> displayName;
  final Input<String>? location;
  final Input<String>? project;

  TaxonomyArgs2({
    this.activatedPolicyTypes,
    this.description,
    required this.displayName,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activatedPolicyTypesValue = activatedPolicyTypes;
    if (activatedPolicyTypesValue != null) {
      map['activatedPolicyTypes'] = Input.mapOptionalInputValue<
              List<TaxonomyActivatedPolicyTypesItem2>, List<String>>(
          activatedPolicyTypesValue,
          (value) =>
              Input.encodeList<TaxonomyActivatedPolicyTypesItem2, String>(
                  value, (value) => value.value));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory TaxonomyArgs2.fromMap(Map<String, dynamic> map) {
    return TaxonomyArgs2(
      activatedPolicyTypes:
          Input.asOptionalInput<List<TaxonomyActivatedPolicyTypesItem2>>(
              map['activatedPolicyTypes']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
