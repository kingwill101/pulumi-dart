import 'package:pulumi/pulumi.dart';
import 'entry_group_args.dart';
import 'google_cloud_datacatalog_v1_system_timestamps_response.dart';

/// Creates an entry group. An entry group contains logically related entries together with [Cloud Identity and Access Management](/data-catalog/docs/concepts/iam) policies. These policies specify users who can create, edit, and view entries within entry groups. Data Catalog automatically creates entry groups with names that start with the `@` symbol for the following resources: * BigQuery entries (`@bigquery`) * Pub/Sub topics (`@pubsub`) * Dataproc Metastore services (`@dataproc_metastore_{SERVICE_NAME_HASH}`) You can create your own entry groups for Cloud Storage fileset entries and custom entries together with the corresponding IAM policies. User-created entry groups can't contain the `@` symbol, it is reserved for automatically created groups. Entry groups, like entries, can be searched. A maximum of 10,000 entry groups may be created per organization across all locations. You must enable the Data Catalog API in the project identified by the `parent` parameter. For more information, see [Data Catalog resource project](https://cloud.google.com/data-catalog/docs/concepts/resource-project).
class EntryGroup extends CustomResource {
  /// Timestamps of the entry group. Default value is empty.
  late final Output<GoogleCloudDatacatalogV1SystemTimestampsResponse>
      dataCatalogTimestamps;

  /// Entry group description. Can consist of several sentences or paragraphs that describe the entry group contents. Default value is an empty string.
  late final Output<String> description;

  /// A short name to identify the entry group, for example, "analytics data - jan 2011". Default value is an empty string.
  late final Output<String> displayName;

  /// Required. The ID of the entry group to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
  late final Output<String> entryGroupId;
  late final Output<String> location;

  /// The resource name of the entry group in URL format. Note: The entry group itself and its child resources might not be stored in the location specified in its name.
  late final Output<String> name;
  late final Output<String> project;

  EntryGroup(
    String name, {
    EntryGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datacatalog/v1:EntryGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataCatalogTimestamps =
        registerOutput<GoogleCloudDatacatalogV1SystemTimestampsResponse>(
            'dataCatalogTimestamps');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.entryGroupId = registerOutput<String>('entryGroupId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
