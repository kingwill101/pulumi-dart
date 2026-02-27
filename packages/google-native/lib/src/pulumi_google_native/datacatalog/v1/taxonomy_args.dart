// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'taxonomy_activated_policy_types_item.dart';

/// The set of arguments for Taxonomy.
class TaxonomyArgs {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  final pulumi.Input<List<TaxonomyActivatedPolicyTypesItem>>?
      activatedPolicyTypes;

  /// Optional. Description of this taxonomy. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  final pulumi.Input<String>? description;

  /// User-defined name of this taxonomy. The name can't start or end with spaces, must contain only Unicode letters, numbers, underscores, dashes, and spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  TaxonomyArgs({
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
      map['activatedPolicyTypes'] = pulumi.Input.mapOptionalInputValue<
              List<TaxonomyActivatedPolicyTypesItem>, List<String>>(
          activatedPolicyTypesValue,
          (value) =>
              pulumi.Input.encodeList<TaxonomyActivatedPolicyTypesItem, String>(
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

  factory TaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return TaxonomyArgs(
      activatedPolicyTypes:
          pulumi.Input.asOptionalInput<List<TaxonomyActivatedPolicyTypesItem>>(
              map['activatedPolicyTypes']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
