import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1_taxonomy_service_response.dart';
import 'taxonomy_args.dart';

/// Creates a taxonomy in a specified project. The taxonomy is initially empty, that is, it doesn't contain policy tags.
/// Auto-naming is currently not supported for this resource.
class Taxonomy extends pulumi.CustomResource {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  late final pulumi.Output<List<String>> activatedPolicyTypes;

  /// Optional. Description of this taxonomy. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  late final pulumi.Output<String> description;

  /// User-defined name of this taxonomy. The name can't start or end with spaces, must contain only Unicode letters, numbers, underscores, dashes, and spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// Resource name of this taxonomy in URL format. Note: Policy tag manager generates unique taxonomy IDs.
  late final pulumi.Output<String> name;

  /// Number of policy tags in this taxonomy.
  late final pulumi.Output<int> policyTagCount;
  late final pulumi.Output<String> project;

  /// Identity of the service which owns the Taxonomy. This field is only populated when the taxonomy is created by a Google Cloud service. Currently only 'DATAPLEX' is supported.
  late final pulumi.Output<GoogleCloudDatacatalogV1TaxonomyServiceResponse>
      service;

  /// Creation and modification timestamps of this taxonomy.
  late final pulumi.Output<GoogleCloudDatacatalogV1SystemTimestampsResponse>
      taxonomyTimestamps;

  Taxonomy(
    String name, {
    TaxonomyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1:Taxonomy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activatedPolicyTypes =
        registerOutput<List<String>>('activatedPolicyTypes');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyTagCount = registerOutput<int>('policyTagCount');
    this.project = registerOutput<String>('project');
    this.service =
        registerOutput<GoogleCloudDatacatalogV1TaxonomyServiceResponse>(
            'service');
    this.taxonomyTimestamps =
        registerOutput<GoogleCloudDatacatalogV1SystemTimestampsResponse>(
            'taxonomyTimestamps');
  }
}
