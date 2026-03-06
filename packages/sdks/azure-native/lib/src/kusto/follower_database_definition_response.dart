// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_level_sharing_properties_response.dart';

/// A class representing follower database request.
class FollowerDatabaseDefinitionResponse {
  /// Resource name of the attached database configuration in the follower cluster.
  final pulumi.Input<String> attachedDatabaseConfigurationName;
  /// Resource id of the cluster that follows a database owned by this cluster.
  final pulumi.Input<String> clusterResourceId;
  /// The database name owned by this cluster that was followed. * in case following all databases.
  final pulumi.Input<String> databaseName;
  /// The origin of the following setup.
  final pulumi.Input<String> databaseShareOrigin;
  /// Table level sharing specifications
  final pulumi.Input<TableLevelSharingPropertiesResponse> tableLevelSharingProperties;

  /// Creates a new [FollowerDatabaseDefinitionResponse].
  /// [attachedDatabaseConfigurationName] Resource name of the attached database configuration in the follower cluster.
  /// [clusterResourceId] Resource id of the cluster that follows a database owned by this cluster.
  /// [databaseName] The database name owned by this cluster that was followed. * in case following all databases.
  /// [databaseShareOrigin] The origin of the following setup.
  /// [tableLevelSharingProperties] Table level sharing specifications
  const FollowerDatabaseDefinitionResponse({
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
      'tableLevelSharingProperties': pulumi.Input.mapInputValue<TableLevelSharingPropertiesResponse, Map<String, dynamic>>(tableLevelSharingProperties, (value) => value.toMap()),
    };
  }

  factory FollowerDatabaseDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return FollowerDatabaseDefinitionResponse(
      attachedDatabaseConfigurationName: pulumi.Input.fromValue(map['attachedDatabaseConfigurationName'] as String),
      clusterResourceId: pulumi.Input.fromValue(map['clusterResourceId'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      databaseShareOrigin: pulumi.Input.fromValue(map['databaseShareOrigin'] as String),
      tableLevelSharingProperties: pulumi.Input.fromValue(TableLevelSharingPropertiesResponse.fromMap((map['tableLevelSharingProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

