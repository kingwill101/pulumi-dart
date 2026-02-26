import 'package:pulumi/pulumi.dart';
import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1beta1_taxonomy_service_response.dart';
import 'taxonomy_args2.dart';

/// Creates a taxonomy in the specified project.
/// Auto-naming is currently not supported for this resource.
class Taxonomy2 extends CustomResource {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  late final Output<List<String>> activatedPolicyTypes;

  /// Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  late final Output<String> description;

  /// User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  late final Output<String> displayName;
  late final Output<String> location;

  /// Resource name of this taxonomy, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{id}".
  late final Output<String> name;

  /// Number of policy tags contained in this taxonomy.
  late final Output<int> policyTagCount;
  late final Output<String> project;

  /// Identity of the service which owns the Taxonomy. This field is only populated when the taxonomy is created by a Google Cloud service. Currently only 'DATAPLEX' is supported.
  late final Output<GoogleCloudDatacatalogV1beta1TaxonomyServiceResponse>
      service;

  /// Timestamps about this taxonomy. Only create_time and update_time are used.
  late final Output<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse>
      taxonomyTimestamps;

  Taxonomy2(
    String name, {
    TaxonomyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1beta1:Taxonomy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activatedPolicyTypes = Output.createUnknown<List<String>>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyTagCount = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.service = Output.createUnknown<
        GoogleCloudDatacatalogV1beta1TaxonomyServiceResponse>();
    this.taxonomyTimestamps = Output.createUnknown<
        GoogleCloudDatacatalogV1beta1SystemTimestampsResponse>();
  }
}
