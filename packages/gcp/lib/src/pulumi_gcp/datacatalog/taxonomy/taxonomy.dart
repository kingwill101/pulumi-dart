import 'package:pulumi/pulumi.dart' as pulumi;
import 'taxonomy_args.dart';

/// A collection of policy tags that classify data along a common axis.
///
///
/// To get more information about Taxonomy, see:
///
/// * [API documentation](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.taxonomies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/data-catalog/docs)
///
/// ## Example Usage
///
/// ### Data Catalog Taxonomy Basic
///
///
///
///
/// ## Import
///
/// Taxonomy can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Taxonomy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datacatalog/taxonomy:Taxonomy default {{name}}
/// ```
class Taxonomy extends pulumi.CustomResource {
  /// A list of policy types that are activated for this taxonomy. If not set,
  /// defaults to an empty list.
  /// Each value may be one of: `POLICY_TYPE_UNSPECIFIED`, `FINE_GRAINED_ACCESS_CONTROL`.
  late final pulumi.Output<List<String>?> activatedPolicyTypes;

  /// Description of this taxonomy. It must: contain only unicode characters,
  /// tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
  /// long when encoded in UTF-8. If not set, defaults to an empty description.
  late final pulumi.Output<String?> description;

  /// User defined name of this taxonomy.
  /// The taxonomy display name must be unique within an organization.
  /// It must: contain only unicode letters, numbers, underscores, dashes
  /// and spaces; not start or end with spaces; and be at most 200 bytes
  /// long when encoded in UTF-8.
  late final pulumi.Output<String> displayName;

  /// Resource name of this taxonomy, whose format is:
  /// "projects/{project}/locations/{region}/taxonomies/{taxonomy}".
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Taxonomy location region.
  late final pulumi.Output<String> region;

  Taxonomy(
    String name, {
    TaxonomyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datacatalog/taxonomy:Taxonomy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activatedPolicyTypes =
        registerOutput<List<String>?>('activatedPolicyTypes');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
