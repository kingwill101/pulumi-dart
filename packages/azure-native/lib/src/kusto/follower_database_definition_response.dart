// ignore_for_file: unused_element, unnecessary_cast

import 'table_level_sharing_properties_response.dart';

/// A class representing follower database request.
class FollowerDatabaseDefinitionResponse {
  /// Resource name of the attached database configuration in the follower cluster.
  final String attachedDatabaseConfigurationName;
  /// Resource id of the cluster that follows a database owned by this cluster.
  final String clusterResourceId;
  /// The database name owned by this cluster that was followed. * in case following all databases.
  final String databaseName;
  /// The origin of the following setup.
  final String databaseShareOrigin;
  /// Table level sharing specifications
  final TableLevelSharingPropertiesResponse tableLevelSharingProperties;

  /// Creates a new [FollowerDatabaseDefinitionResponse].
  /// [attachedDatabaseConfigurationName] Resource name of the attached database configuration in the follower cluster.
  /// [clusterResourceId] Resource id of the cluster that follows a database owned by this cluster.
  /// [databaseName] The database name owned by this cluster that was followed. * in case following all databases.
  /// [databaseShareOrigin] The origin of the following setup.
  /// [tableLevelSharingProperties] Table level sharing specifications
  FollowerDatabaseDefinitionResponse({
    required this.attachedDatabaseConfigurationName,
    required this.clusterResourceId,
    required this.databaseName,
    required this.databaseShareOrigin,
    required this.tableLevelSharingProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': attachedDatabaseConfigurationName,
      'clusterResourceId': clusterResourceId,
      'databaseName': databaseName,
      'databaseShareOrigin': databaseShareOrigin,
      'tableLevelSharingProperties': tableLevelSharingProperties.toMap(),
    };
  }

  factory FollowerDatabaseDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return FollowerDatabaseDefinitionResponse(
      attachedDatabaseConfigurationName: map['attachedDatabaseConfigurationName'] as String,
      clusterResourceId: map['clusterResourceId'] as String,
      databaseName: map['databaseName'] as String,
      databaseShareOrigin: map['databaseShareOrigin'] as String,
      tableLevelSharingProperties: TableLevelSharingPropertiesResponse.fromMap((map['tableLevelSharingProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

