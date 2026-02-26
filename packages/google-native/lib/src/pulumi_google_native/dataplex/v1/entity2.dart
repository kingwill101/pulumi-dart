import 'package:pulumi/pulumi.dart';
import 'entity_args2.dart';
import 'google_cloud_dataplex_v1_entity_compatibility_status_response.dart';
import 'google_cloud_dataplex_v1_schema_response.dart';
import 'google_cloud_dataplex_v1_storage_access_response.dart';
import 'google_cloud_dataplex_v1_storage_format_response.dart';

/// Create a metadata entity.
/// Auto-naming is currently not supported for this resource.
class Entity2 extends CustomResource {
  /// Identifies the access mechanism to the entity. Not user settable.
  late final Output<GoogleCloudDataplexV1StorageAccessResponse> access;

  /// Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  late final Output<String> asset;

  /// The name of the associated Data Catalog entry.
  late final Output<String> catalogEntry;

  /// Metadata stores that the entity is compatible with.
  late final Output<GoogleCloudDataplexV1EntityCompatibilityStatusResponse>
      compatibility;

  /// The time when the entity was created.
  late final Output<String> createTime;

  /// Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  late final Output<String> dataPath;

  /// Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  late final Output<String> dataPathPattern;

  /// Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  late final Output<String> description;

  /// Optional. Display name must be shorter than or equal to 256 characters.
  late final Output<String> displayName;

  /// Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  late final Output<String> etag;

  /// Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  late final Output<GoogleCloudDataplexV1StorageFormatResponse> format;
  late final Output<String> lakeId;
  late final Output<String> location;

  /// The resource name of the entity, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}.
  late final Output<String> name;
  late final Output<String> project;

  /// The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  late final Output<GoogleCloudDataplexV1SchemaResponse> schema;

  /// Immutable. Identifies the storage system of the entity data.
  late final Output<String> system;

  /// Immutable. The type of entity.
  late final Output<String> type;

  /// System generated unique ID for the Entity. This ID will be different if the Entity is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the entity was last updated.
  late final Output<String> updateTime;
  late final Output<String> zone;

  Entity2(
    String name, {
    EntityArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Entity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.access =
        Output.createUnknown<GoogleCloudDataplexV1StorageAccessResponse>();
    this.asset = Output.createUnknown<String>();
    this.catalogEntry = Output.createUnknown<String>();
    this.compatibility = Output.createUnknown<
        GoogleCloudDataplexV1EntityCompatibilityStatusResponse>();
    this.createTime = Output.createUnknown<String>();
    this.dataPath = Output.createUnknown<String>();
    this.dataPathPattern = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.format =
        Output.createUnknown<GoogleCloudDataplexV1StorageFormatResponse>();
    this.lakeId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.schema = Output.createUnknown<GoogleCloudDataplexV1SchemaResponse>();
    this.system = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
