// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<AzureDataLakeSectionResponse?>? azureDataLakeSection;
  final pulumi.Input<AzureMySqlSectionResponse?>? azureMySqlSection;
  final pulumi.Input<AzurePostgreSqlSectionResponse?>? azurePostgreSqlSection;
  final pulumi.Input<AzureSqlDatabaseSectionResponse?>? azureSqlDatabaseSection;
  final pulumi.Input<AzureStorageSectionResponse?>? azureStorageSection;
  /// The User who created the datastore.
  final pulumi.Input<UserInfoResponse> createdBy;
  /// The date and time when the datastore was created.
  final pulumi.Input<String> createdTime;
  /// The datastore type.
  final pulumi.Input<String?>? dataStoreType;
  /// Description of the datastore.
  final pulumi.Input<String?>? description;
  /// Data specific to GlusterFS.
  final pulumi.Input<GlusterFsSectionResponse?>? glusterFsSection;
  /// A read only property that denotes whether the service datastore has been validated with credentials.
  final pulumi.Input<bool?>? hasBeenValidated;
  /// Info about origin if it is linked.
  final pulumi.Input<LinkedInfoResponse?>? linkedInfo;
  /// The User who modified the datastore.
  final pulumi.Input<UserInfoResponse> modifiedBy;
  /// The date and time when the datastore was last modified.
  final pulumi.Input<String> modifiedTime;
  /// Name of the datastore.
  final pulumi.Input<String?>? name;
  /// Tags for this datastore.
  final pulumi.Input<Map<String, String>> tags;

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
    pulumi.Input<bool?>? hasBeenValidated,
    this.linkedInfo,
    required this.modifiedBy,
    required this.modifiedTime,
    this.name,
    required this.tags,
  }) : hasBeenValidated = hasBeenValidated ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDataLakeSection': ?pulumi.Input.mapOptionalInputValue<AzureDataLakeSectionResponse, Map<String, dynamic>>(azureDataLakeSection, (value) => value.toMap()),
      'azureMySqlSection': ?pulumi.Input.mapOptionalInputValue<AzureMySqlSectionResponse, Map<String, dynamic>>(azureMySqlSection, (value) => value.toMap()),
      'azurePostgreSqlSection': ?pulumi.Input.mapOptionalInputValue<AzurePostgreSqlSectionResponse, Map<String, dynamic>>(azurePostgreSqlSection, (value) => value.toMap()),
      'azureSqlDatabaseSection': ?pulumi.Input.mapOptionalInputValue<AzureSqlDatabaseSectionResponse, Map<String, dynamic>>(azureSqlDatabaseSection, (value) => value.toMap()),
      'azureStorageSection': ?pulumi.Input.mapOptionalInputValue<AzureStorageSectionResponse, Map<String, dynamic>>(azureStorageSection, (value) => value.toMap()),
      'createdBy': pulumi.Input.mapInputValue<UserInfoResponse, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'createdTime': createdTime,
      'dataStoreType': ?dataStoreType,
      'description': ?description,
      'glusterFsSection': ?pulumi.Input.mapOptionalInputValue<GlusterFsSectionResponse, Map<String, dynamic>>(glusterFsSection, (value) => value.toMap()),
      'hasBeenValidated': ?hasBeenValidated,
      'linkedInfo': ?pulumi.Input.mapOptionalInputValue<LinkedInfoResponse, Map<String, dynamic>>(linkedInfo, (value) => value.toMap()),
      'modifiedBy': pulumi.Input.mapInputValue<UserInfoResponse, Map<String, dynamic>>(modifiedBy, (value) => value.toMap()),
      'modifiedTime': modifiedTime,
      'name': ?name,
      'tags': tags,
    };
  }

  factory DatastoreResponse.fromMap(Map<String, dynamic> map) {
    return DatastoreResponse(
      azureDataLakeSection: (() { final guardedValue = map['azureDataLakeSection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureDataLakeSectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureMySqlSection: (() { final guardedValue = map['azureMySqlSection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMySqlSectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azurePostgreSqlSection: (() { final guardedValue = map['azurePostgreSqlSection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzurePostgreSqlSectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureSqlDatabaseSection: (() { final guardedValue = map['azureSqlDatabaseSection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureSqlDatabaseSectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureStorageSection: (() { final guardedValue = map['azureStorageSection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureStorageSectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdBy: pulumi.Input.fromValue(UserInfoResponse.fromMap((map['createdBy']! as Map).cast<String, dynamic>())),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      dataStoreType: (() { final guardedValue = map['dataStoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glusterFsSection: (() { final guardedValue = map['glusterFsSection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlusterFsSectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hasBeenValidated: (() { final guardedValue = map['hasBeenValidated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      linkedInfo: (() { final guardedValue = map['linkedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedBy: pulumi.Input.fromValue(UserInfoResponse.fromMap((map['modifiedBy']! as Map).cast<String, dynamic>())),
      modifiedTime: pulumi.Input.fromValue(map['modifiedTime'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
