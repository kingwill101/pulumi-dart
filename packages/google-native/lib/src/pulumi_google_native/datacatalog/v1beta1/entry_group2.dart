import 'package:pulumi/pulumi.dart' hide Config;
import 'entry_group_args2.dart';
import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';

/// A maximum of 10,000 entry groups may be created per organization across all locations. Users should enable the Data Catalog API in the project identified by the `parent` parameter (see [Data Catalog Resource Project] (https://cloud.google.com/data-catalog/docs/concepts/resource-project) for more information).
class EntryGroup2 extends CustomResource {
  /// Timestamps about this EntryGroup. Default value is empty timestamps.
  late final Output<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse>
      dataCatalogTimestamps;

  /// Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. Default value is an empty string.
  late final Output<String> description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  late final Output<String> displayName;

  /// Required. The id of the entry group to create. The id must begin with a letter or underscore, contain only English letters, numbers and underscores, and be at most 64 characters.
  late final Output<String> entryGroupId;
  late final Output<String> location;

  /// The resource name of the entry group in URL format. Example: * projects/{project_id}/locations/{location}/entryGroups/{entry_group_id} Note that this EntryGroup and its child resources may not actually be stored in the location in this name.
  late final Output<String> name;
  late final Output<String> project;

  EntryGroup2(
    String name, {
    EntryGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1beta1:EntryGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataCatalogTimestamps =
        registerOutput<GoogleCloudDatacatalogV1beta1SystemTimestampsResponse>(
            'dataCatalogTimestamps');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.entryGroupId = registerOutput<String>('entryGroupId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
