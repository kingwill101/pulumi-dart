// ignore_for_file: unused_element, unnecessary_cast

import 'azure_data_lake_section_response.dart';
import 'azure_my_sql_section_response.dart';
import 'azure_postgre_sql_section_response.dart';
import 'azure_sql_database_section_response.dart';
import 'azure_storage_section_response.dart';
import 'gluster_fs_section_response.dart';
import 'linked_info_response.dart';
import 'user_info_response.dart';

/// Machine Learning datastore object.
class DatastoreResponse {
  final AzureDataLakeSectionResponse? azureDataLakeSection;
  final AzureMySqlSectionResponse? azureMySqlSection;
  final AzurePostgreSqlSectionResponse? azurePostgreSqlSection;
  final AzureSqlDatabaseSectionResponse? azureSqlDatabaseSection;
  final AzureStorageSectionResponse? azureStorageSection;
  /// The User who created the datastore.
  final UserInfoResponse createdBy;
  /// The date and time when the datastore was created.
  final String createdTime;
  /// The datastore type.
  final String? dataStoreType;
  /// Description of the datastore.
  final String? description;
  /// Data specific to GlusterFS.
  final GlusterFsSectionResponse? glusterFsSection;
  /// A read only property that denotes whether the service datastore has been validated with credentials.
  final bool? hasBeenValidated;
  /// Info about origin if it is linked.
  final LinkedInfoResponse? linkedInfo;
  /// The User who modified the datastore.
  final UserInfoResponse modifiedBy;
  /// The date and time when the datastore was last modified.
  final String modifiedTime;
  /// Name of the datastore.
  final String? name;
  /// Tags for this datastore.
  final Map<String, String> tags;

  /// Creates a new [DatastoreResponse].
  /// [azureDataLakeSection] Optional.
  /// [azureMySqlSection] Optional.
  /// [azurePostgreSqlSection] Optional.
  /// [azureSqlDatabaseSection] Optional.
  /// [azureStorageSection] Optional.
  /// [createdBy] The User who created the datastore.
  /// [createdTime] The date and time when the datastore was created.
  /// [dataStoreType] The datastore type.
  /// [description] Description of the datastore.
  /// [glusterFsSection] Data specific to GlusterFS.
  /// [hasBeenValidated] A read only property that denotes whether the service datastore has been validated with credentials.
  /// [linkedInfo] Info about origin if it is linked.
  /// [modifiedBy] The User who modified the datastore.
  /// [modifiedTime] The date and time when the datastore was last modified.
  /// [name] Name of the datastore.
  /// [tags] Tags for this datastore.
  DatastoreResponse({
    this.azureDataLakeSection,
    this.azureMySqlSection,
    this.azurePostgreSqlSection,
    this.azureSqlDatabaseSection,
    this.azureStorageSection,
    required this.createdBy,
    required this.createdTime,
    this.dataStoreType,
    this.description,
    this.glusterFsSection,
    this.hasBeenValidated,
    this.linkedInfo,
    required this.modifiedBy,
    required this.modifiedTime,
    this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDataLakeSection': ?azureDataLakeSection == null ? null : azureDataLakeSection!.toMap(),
      'azureMySqlSection': ?azureMySqlSection == null ? null : azureMySqlSection!.toMap(),
      'azurePostgreSqlSection': ?azurePostgreSqlSection == null ? null : azurePostgreSqlSection!.toMap(),
      'azureSqlDatabaseSection': ?azureSqlDatabaseSection == null ? null : azureSqlDatabaseSection!.toMap(),
      'azureStorageSection': ?azureStorageSection == null ? null : azureStorageSection!.toMap(),
      'createdBy': createdBy.toMap(),
      'createdTime': createdTime,
      'dataStoreType': ?dataStoreType,
      'description': ?description,
      'glusterFsSection': ?glusterFsSection == null ? null : glusterFsSection!.toMap(),
      'hasBeenValidated': ?hasBeenValidated,
      'linkedInfo': ?linkedInfo == null ? null : linkedInfo!.toMap(),
      'modifiedBy': modifiedBy.toMap(),
      'modifiedTime': modifiedTime,
      'name': ?name,
      'tags': tags,
    };
  }

  factory DatastoreResponse.fromMap(Map<String, dynamic> map) {
    return DatastoreResponse(
      azureDataLakeSection: map['azureDataLakeSection'] == null ? null : AzureDataLakeSectionResponse.fromMap((map['azureDataLakeSection'] as Map).cast<String, dynamic>()),
      azureMySqlSection: map['azureMySqlSection'] == null ? null : AzureMySqlSectionResponse.fromMap((map['azureMySqlSection'] as Map).cast<String, dynamic>()),
      azurePostgreSqlSection: map['azurePostgreSqlSection'] == null ? null : AzurePostgreSqlSectionResponse.fromMap((map['azurePostgreSqlSection'] as Map).cast<String, dynamic>()),
      azureSqlDatabaseSection: map['azureSqlDatabaseSection'] == null ? null : AzureSqlDatabaseSectionResponse.fromMap((map['azureSqlDatabaseSection'] as Map).cast<String, dynamic>()),
      azureStorageSection: map['azureStorageSection'] == null ? null : AzureStorageSectionResponse.fromMap((map['azureStorageSection'] as Map).cast<String, dynamic>()),
      createdBy: UserInfoResponse.fromMap((map['createdBy'] as Map).cast<String, dynamic>()),
      createdTime: map['createdTime'] as String,
      dataStoreType: map['dataStoreType'] == null ? null : map['dataStoreType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      glusterFsSection: map['glusterFsSection'] == null ? null : GlusterFsSectionResponse.fromMap((map['glusterFsSection'] as Map).cast<String, dynamic>()),
      hasBeenValidated: map['hasBeenValidated'] == null ? null : map['hasBeenValidated'] as bool,
      linkedInfo: map['linkedInfo'] == null ? null : LinkedInfoResponse.fromMap((map['linkedInfo'] as Map).cast<String, dynamic>()),
      modifiedBy: UserInfoResponse.fromMap((map['modifiedBy'] as Map).cast<String, dynamic>()),
      modifiedTime: map['modifiedTime'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

