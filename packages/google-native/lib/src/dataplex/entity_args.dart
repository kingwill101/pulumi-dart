// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_system.dart';
import 'entity_type.dart';
import 'google_cloud_dataplex_v1_schema.dart';
import 'google_cloud_dataplex_v1_storage_format.dart';

/// {@template pulumi_dataplex_v1_entity_args_doc}
/// The set of arguments for Entity.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_entity_args_doc}
class EntityArgs {
  /// Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  final pulumi.Input<String> asset;

  /// Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  final pulumi.Input<String> dataPath;

  /// Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  final pulumi.Input<String>? dataPathPattern;

  /// Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Display name must be shorter than or equal to 256 characters.
  final pulumi.Input<String>? displayName;

  /// Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  final pulumi.Input<String>? etag;

  /// Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  final pulumi.Input<GoogleCloudDataplexV1StorageFormat> format;

  /// A user-provided entity ID. It is mutable, and will be used as the published table name. Specifying a new ID in an update entity request will override the existing value. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores, and consist of 256 or fewer characters.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  final pulumi.Input<GoogleCloudDataplexV1Schema> schema;

  /// Immutable. Identifies the storage system of the entity data.
  final pulumi.Input<EntitySystem> system;

  /// Immutable. The type of entity.
  final pulumi.Input<EntityType> type;
  final pulumi.Input<String>? zone;

  /// Creates a new [EntityArgs].
  /// [asset] Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  /// [dataPath] Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  /// [dataPathPattern] Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  /// [description] Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  /// [displayName] Optional. Display name must be shorter than or equal to 256 characters.
  /// [etag] Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  /// [format] Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  /// [id] A user-provided entity ID. It is mutable, and will be used as the published table name. Specifying a new ID in an update entity request will override the existing value. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores, and consist of 256 or fewer characters.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [schema] The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  /// [system] Immutable. Identifies the storage system of the entity data.
  /// [type] Immutable. The type of entity.
  /// [zone] Optional.
  EntityArgs({
    required String asset,
    required String dataPath,
    String? dataPathPattern,
    String? description,
    String? displayName,
    String? etag,
    required GoogleCloudDataplexV1StorageFormat format,
    required String id,
    required String lakeId,
    String? location,
    String? project,
    required GoogleCloudDataplexV1Schema schema,
    required EntitySystem system,
    required EntityType type,
    String? zone,
  })  : asset = pulumi.Input.asInput<String>(asset),
        dataPath = pulumi.Input.asInput<String>(dataPath),
        dataPathPattern = pulumi.Input.asOptionalInput<String>(dataPathPattern),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        format =
            pulumi.Input.asInput<GoogleCloudDataplexV1StorageFormat>(format),
        id = pulumi.Input.asInput<String>(id),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        schema = pulumi.Input.asInput<GoogleCloudDataplexV1Schema>(schema),
        system = pulumi.Input.asInput<EntitySystem>(system),
        type = pulumi.Input.asInput<EntityType>(type),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asset'] = asset;
    map['dataPath'] = dataPath;
    final dataPathPatternValue = dataPathPattern;
    if (dataPathPatternValue != null) {
      map['dataPathPattern'] = dataPathPatternValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['format'] = pulumi.Input.mapInputValue<
        GoogleCloudDataplexV1StorageFormat,
        Map<String, dynamic>>(format, (value) => value.toMap());
    map['id'] = id;
    map['lakeId'] = lakeId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['schema'] = pulumi.Input.mapInputValue<GoogleCloudDataplexV1Schema,
        Map<String, dynamic>>(schema, (value) => value.toMap());
    map['system'] = pulumi.Input.mapInputValue<EntitySystem, String>(
        system, (value) => value.value);
    map['type'] = pulumi.Input.mapInputValue<EntityType, String>(
        type, (value) => value.value);
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory EntityArgs.fromMap(Map<String, dynamic> map) {
    return EntityArgs(
      asset: map['asset'] as String,
      dataPath: map['dataPath'] as String,
      dataPathPattern: map['dataPathPattern'] == null
          ? null
          : map['dataPathPattern'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      format: GoogleCloudDataplexV1StorageFormat.fromMap(
          (map['format'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      schema: GoogleCloudDataplexV1Schema.fromMap(
          (map['schema'] as Map).cast<String, dynamic>()),
      system: EntitySystem.fromValue(map['system'] as String),
      type: EntityType.fromValue(map['type'] as String),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
