// ignore_for_file: unused_element, unnecessary_cast

import 'database_statistics_response.dart';
import 'suspension_details_response.dart';
import 'table_level_sharing_properties_response.dart';

/// Result data returned by getReadOnlyFollowingDatabase.
class GetReadOnlyFollowingDatabaseResult {
  /// The name of the attached database configuration cluster
  final String attachedDatabaseConfigurationName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The origin of the following setup.
  final String databaseShareOrigin;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final String? hotCachePeriod;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Kind of the database
  /// Expected value is 'ReadOnlyFollowing'.
  final String kind;
  /// The name of the leader cluster
  final String leaderClusterResourceId;
  /// Resource location.
  final String? location;
  /// The name of the resource
  final String name;
  /// The original database name, before databaseNameOverride or databaseNamePrefix where applied.
  final String originalDatabaseName;
  /// The principals modification kind of the database
  final String principalsModificationKind;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  final String softDeletePeriod;
  /// The statistics of the database.
  final DatabaseStatisticsResponse statistics;
  /// The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
  final SuspensionDetailsResponse suspensionDetails;
  /// Table level sharing specifications
  final TableLevelSharingPropertiesResponse tableLevelSharingProperties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetReadOnlyFollowingDatabaseResult].
  /// [attachedDatabaseConfigurationName] The name of the attached database configuration cluster
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseShareOrigin] The origin of the following setup.
  /// [hotCachePeriod] The time the data should be kept in cache for fast queries in TimeSpan.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Kind of the database
  /// [leaderClusterResourceId] The name of the leader cluster
  /// [location] Resource location.
  /// [name] The name of the resource
  /// [originalDatabaseName] The original database name, before databaseNameOverride or databaseNamePrefix where applied.
  /// [principalsModificationKind] The principals modification kind of the database
  /// [provisioningState] The provisioned state of the resource.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries in TimeSpan.
  /// [statistics] The statistics of the database.
  /// [suspensionDetails] The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
  /// [tableLevelSharingProperties] Table level sharing specifications
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetReadOnlyFollowingDatabaseResult({
    required this.attachedDatabaseConfigurationName,
    required this.azureApiVersion,
    required this.databaseShareOrigin,
    this.hotCachePeriod,
    required this.id,
    required this.kind,
    required this.leaderClusterResourceId,
    this.location,
    required this.name,
    required this.originalDatabaseName,
    required this.principalsModificationKind,
    required this.provisioningState,
    required this.softDeletePeriod,
    required this.statistics,
    required this.suspensionDetails,
    required this.tableLevelSharingProperties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': attachedDatabaseConfigurationName,
      'azureApiVersion': azureApiVersion,
      'databaseShareOrigin': databaseShareOrigin,
      'hotCachePeriod': ?hotCachePeriod,
      'id': id,
      'kind': kind,
      'leaderClusterResourceId': leaderClusterResourceId,
      'location': ?location,
      'name': name,
      'originalDatabaseName': originalDatabaseName,
      'principalsModificationKind': principalsModificationKind,
      'provisioningState': provisioningState,
      'softDeletePeriod': softDeletePeriod,
      'statistics': statistics.toMap(),
      'suspensionDetails': suspensionDetails.toMap(),
      'tableLevelSharingProperties': tableLevelSharingProperties.toMap(),
      'type': type,
    };
  }

  factory GetReadOnlyFollowingDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetReadOnlyFollowingDatabaseResult(
      attachedDatabaseConfigurationName: map['attachedDatabaseConfigurationName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      databaseShareOrigin: map['databaseShareOrigin'] as String,
      hotCachePeriod: (() { final guardedValue = map['hotCachePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      leaderClusterResourceId: map['leaderClusterResourceId'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      originalDatabaseName: map['originalDatabaseName'] as String,
      principalsModificationKind: map['principalsModificationKind'] as String,
      provisioningState: map['provisioningState'] as String,
      softDeletePeriod: map['softDeletePeriod'] as String,
      statistics: DatabaseStatisticsResponse.fromMap((map['statistics']! as Map).cast<String, dynamic>()),
      suspensionDetails: SuspensionDetailsResponse.fromMap((map['suspensionDetails']! as Map).cast<String, dynamic>()),
      tableLevelSharingProperties: TableLevelSharingPropertiesResponse.fromMap((map['tableLevelSharingProperties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

