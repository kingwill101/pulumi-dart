// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'taxonomy_activated_policy_types_item_datacatalog_v1beta1.dart';

/// {@template pulumi_datacatalog_v1beta1_taxonomy_datacatalog_v1beta1_args_doc}
/// The set of arguments for Taxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_taxonomy_datacatalog_v1beta1_args_doc}
class TaxonomyDatacatalogV1beta1Args {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  final pulumi.Input<List<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>>? activatedPolicyTypes;
  /// Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  final pulumi.Input<String>? description;
  /// User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [TaxonomyDatacatalogV1beta1Args].
  /// [activatedPolicyTypes] Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  /// [description] Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  /// [displayName] User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  /// [location] Optional.
  /// [project] Optional.
  TaxonomyDatacatalogV1beta1Args({
    List<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>? activatedPolicyTypes,
    String? description,
    required String displayName,
    String? location,
    String? project,
  }) :
      activatedPolicyTypes = pulumi.Input.asOptionalInput<List<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>>(activatedPolicyTypes),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?pulumi.Input.mapOptionalInputValue<List<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>, List<String>>(activatedPolicyTypes, (value) => pulumi.Input.encodeList<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1, String>(value, (value) => value.value)),
      'description': ?description,
      'displayName': displayName,
      'location': ?location,
      'project': ?project,
    };
  }

  factory TaxonomyDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TaxonomyDatacatalogV1beta1Args(
      activatedPolicyTypes: map['activatedPolicyTypes'] == null ? null : pulumi.Input.decodeList<TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1>(map['activatedPolicyTypes'], (value) => TaxonomyActivatedPolicyTypesItemDatacatalogV1beta1.fromValue(value as String)),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

