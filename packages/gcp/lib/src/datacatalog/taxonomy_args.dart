// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_taxonomy_taxonomy_args_doc}
/// The set of arguments for Taxonomy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_taxonomy_taxonomy_args_doc}
class TaxonomyArgs {
  /// A list of policy types that are activated for this taxonomy. If not set,
  /// defaults to an empty list.
  /// Each value may be one of: `POLICY_TYPE_UNSPECIFIED`, `FINE_GRAINED_ACCESS_CONTROL`.
  final pulumi.Input<List<String>>? activatedPolicyTypes;

  /// Description of this taxonomy. It must: contain only unicode characters,
  /// tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
  /// long when encoded in UTF-8. If not set, defaults to an empty description.
  final pulumi.Input<String>? description;

  /// User defined name of this taxonomy.
  /// The taxonomy display name must be unique within an organization.
  /// It must: contain only unicode letters, numbers, underscores, dashes
  /// and spaces; not start or end with spaces; and be at most 200 bytes
  /// long when encoded in UTF-8.
  final pulumi.Input<String> displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Taxonomy location region.
  final pulumi.Input<String>? region;

  /// Creates a new [TaxonomyArgs].
  /// [activatedPolicyTypes] A list of policy types that are activated for this taxonomy. If not set,
  /// [description] Description of this taxonomy. It must: contain only unicode characters,
  /// [displayName] User defined name of this taxonomy.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Taxonomy location region.
  TaxonomyArgs({
    List<String>? activatedPolicyTypes,
    String? description,
    required String displayName,
    String? project,
    String? region,
  }) : activatedPolicyTypes = pulumi.Input.asOptionalInput<List<String>>(
         activatedPolicyTypes,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asInput<String>(displayName),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?activatedPolicyTypes,
      'description': ?description,
      'displayName': displayName,
      'project': ?project,
      'region': ?region,
    };
  }

  factory TaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return TaxonomyArgs(
      activatedPolicyTypes: map['activatedPolicyTypes'] == null
          ? null
          : (map['activatedPolicyTypes'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
