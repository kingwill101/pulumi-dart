// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'entity_system.dart';
import 'entity_type.dart';
import 'google_cloud_dataplex_v1_schema.dart';
import 'google_cloud_dataplex_v1_storage_format.dart';

/// The set of arguments for Entity.
class EntityArgs2 {
  /// Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  final Input<String> asset;

  /// Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  final Input<String> dataPath;

  /// Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  final Input<String>? dataPathPattern;

  /// Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  final Input<String>? description;

  /// Optional. Display name must be shorter than or equal to 256 characters.
  final Input<String>? displayName;

  /// Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  final Input<String>? etag;

  /// Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  final Input<GoogleCloudDataplexV1StorageFormat> format;

  /// A user-provided entity ID. It is mutable, and will be used as the published table name. Specifying a new ID in an update entity request will override the existing value. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores, and consist of 256 or fewer characters.
  final Input<String> id;
  final Input<String> lakeId;
  final Input<String>? location;
  final Input<String>? project;

  /// The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  final Input<GoogleCloudDataplexV1Schema> schema;

  /// Immutable. Identifies the storage system of the entity data.
  final Input<EntitySystem> system;

  /// Immutable. The type of entity.
  final Input<EntityType> type;
  final Input<String>? zone;

  EntityArgs2({
    required this.asset,
    required this.dataPath,
    this.dataPathPattern,
    this.description,
    this.displayName,
    this.etag,
    required this.format,
    required this.id,
    required this.lakeId,
    this.location,
    this.project,
    required this.schema,
    required this.system,
    required this.type,
    this.zone,
  });

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
    map['format'] = Input.mapInputValue<GoogleCloudDataplexV1StorageFormat,
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
    map['schema'] =
        Input.mapInputValue<GoogleCloudDataplexV1Schema, Map<String, dynamic>>(
            schema, (value) => value.toMap());
    map['system'] = Input.mapInputValue<EntitySystem, String>(
        system, (value) => value.value);
    map['type'] =
        Input.mapInputValue<EntityType, String>(type, (value) => value.value);
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory EntityArgs2.fromMap(Map<String, dynamic> map) {
    return EntityArgs2(
      asset: Input.asInput<String>(map['asset']),
      dataPath: Input.asInput<String>(map['dataPath']),
      dataPathPattern: Input.asOptionalInput<String>(map['dataPathPattern']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      format: Input.asInput<GoogleCloudDataplexV1StorageFormat>(map['format']),
      id: Input.asInput<String>(map['id']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      schema: Input.asInput<GoogleCloudDataplexV1Schema>(map['schema']),
      system: Input.asInput<EntitySystem>(map['system']),
      type: Input.asInput<EntityType>(map['type']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
