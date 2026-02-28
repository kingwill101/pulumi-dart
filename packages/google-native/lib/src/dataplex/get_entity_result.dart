// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_entity_compatibility_status_response.dart';
import 'google_cloud_dataplex_v1_schema_response.dart';
import 'google_cloud_dataplex_v1_storage_access_response.dart';
import 'google_cloud_dataplex_v1_storage_format_response.dart';

/// Result data returned by getEntity.
class GetEntityResult {
  /// Identifies the access mechanism to the entity. Not user settable.
  final GoogleCloudDataplexV1StorageAccessResponse access;
  /// Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  final String asset;
  /// The name of the associated Data Catalog entry.
  final String catalogEntry;
  /// Metadata stores that the entity is compatible with.
  final GoogleCloudDataplexV1EntityCompatibilityStatusResponse compatibility;
  /// The time when the entity was created.
  final String createTime;
  /// Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  final String dataPath;
  /// Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  final String dataPathPattern;
  /// Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  final String description;
  /// Optional. Display name must be shorter than or equal to 256 characters.
  final String displayName;
  /// Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  final String etag;
  /// Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  final GoogleCloudDataplexV1StorageFormatResponse format;
  /// The resource name of the entity, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}.
  final String name;
  /// The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  final GoogleCloudDataplexV1SchemaResponse schema;
  /// Immutable. Identifies the storage system of the entity data.
  final String system;
  /// Immutable. The type of entity.
  final String type;
  /// System generated unique ID for the Entity. This ID will be different if the Entity is deleted and re-created with the same name.
  final String uid;
  /// The time when the entity was last updated.
  final String updateTime;

  /// Creates a new [GetEntityResult].
  /// [access] Identifies the access mechanism to the entity. Not user settable.
  /// [asset] Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  /// [catalogEntry] The name of the associated Data Catalog entry.
  /// [compatibility] Metadata stores that the entity is compatible with.
  /// [createTime] The time when the entity was created.
  /// [dataPath] Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  /// [dataPathPattern] Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  /// [description] Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  /// [displayName] Optional. Display name must be shorter than or equal to 256 characters.
  /// [etag] Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  /// [format] Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  /// [name] The resource name of the entity, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}.
  /// [schema] The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  /// [system] Immutable. Identifies the storage system of the entity data.
  /// [type] Immutable. The type of entity.
  /// [uid] System generated unique ID for the Entity. This ID will be different if the Entity is deleted and re-created with the same name.
  /// [updateTime] The time when the entity was last updated.
  GetEntityResult({
    required this.access,
    required this.asset,
    required this.catalogEntry,
    required this.compatibility,
    required this.createTime,
    required this.dataPath,
    required this.dataPathPattern,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.format,
    required this.name,
    required this.schema,
    required this.system,
    required this.type,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access.toMap(),
      'asset': asset,
      'catalogEntry': catalogEntry,
      'compatibility': compatibility.toMap(),
      'createTime': createTime,
      'dataPath': dataPath,
      'dataPathPattern': dataPathPattern,
      'description': description,
      'displayName': displayName,
      'etag': etag,
      'format': format.toMap(),
      'name': name,
      'schema': schema.toMap(),
      'system': system,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetEntityResult.fromMap(Map<String, dynamic> map) {
    return GetEntityResult(
      access: GoogleCloudDataplexV1StorageAccessResponse.fromMap((map['access'] as Map).cast<String, dynamic>()),
      asset: map['asset'] as String,
      catalogEntry: map['catalogEntry'] as String,
      compatibility: GoogleCloudDataplexV1EntityCompatibilityStatusResponse.fromMap((map['compatibility'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dataPath: map['dataPath'] as String,
      dataPathPattern: map['dataPathPattern'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      format: GoogleCloudDataplexV1StorageFormatResponse.fromMap((map['format'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      schema: GoogleCloudDataplexV1SchemaResponse.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      system: map['system'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

