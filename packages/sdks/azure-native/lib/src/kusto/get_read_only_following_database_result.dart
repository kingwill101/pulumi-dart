// ignore_for_file: unused_element, unnecessary_cast

import 'database_statistics_response.dart';
import 'suspension_details_response.dart';
import 'table_level_sharing_properties_response.dart';

/// Result data returned by getReadOnlyFollowingDatabase.
class GetReadOnlyFollowingDatabaseResult {
  /// The name of the attached database configuration cluster
  final String? attachedDatabaseConfigurationName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The origin of the following setup.
  final String? databaseShareOrigin;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final String? hotCachePeriod;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Kind of the database
  /// Expected value is 'ReadOnlyFollowing'.
  final String? kind;
  /// The name of the leader cluster
  final String? leaderClusterResourceId;
  /// Resource location.
  final String? location;
  /// The name of the resource
  final String? name;
  /// The original database name, before databaseNameOverride or databaseNamePrefix where applied.
  final String? originalDatabaseName;
  /// The principals modification kind of the database
  final String? principalsModificationKind;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  final String? softDeletePeriod;
  /// The statistics of the database.
  final DatabaseStatisticsResponse? statistics;
  /// The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
  final SuspensionDetailsResponse? suspensionDetails;
  /// Table level sharing specifications
  final TableLevelSharingPropertiesResponse? tableLevelSharingProperties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.attachedDatabaseConfigurationName,
    this.azureApiVersion,
    this.databaseShareOrigin,
    this.hotCachePeriod,
    this.id,
    this.kind,
    this.leaderClusterResourceId,
    this.location,
    this.name,
    this.originalDatabaseName,
    this.principalsModificationKind,
    this.provisioningState,
    this.softDeletePeriod,
    this.statistics,
    this.suspensionDetails,
    this.tableLevelSharingProperties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': ?attachedDatabaseConfigurationName,
      'azureApiVersion': ?azureApiVersion,
      'databaseShareOrigin': ?databaseShareOrigin,
      'hotCachePeriod': ?hotCachePeriod,
      'id': ?id,
      'kind': ?kind,
      'leaderClusterResourceId': ?leaderClusterResourceId,
      'location': ?location,
      'name': ?name,
      'originalDatabaseName': ?originalDatabaseName,
      'principalsModificationKind': ?principalsModificationKind,
      'provisioningState': ?provisioningState,
      'softDeletePeriod': ?softDeletePeriod,
      'statistics': ?statistics?.toMap(),
      'suspensionDetails': ?suspensionDetails?.toMap(),
      'tableLevelSharingProperties': ?tableLevelSharingProperties?.toMap(),
      'type': ?type,
    };
  }

  factory GetReadOnlyFollowingDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetReadOnlyFollowingDatabaseResult(
      attachedDatabaseConfigurationName: (() { final guardedValue = map['attachedDatabaseConfigurationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseShareOrigin: (() { final guardedValue = map['databaseShareOrigin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hotCachePeriod: (() { final guardedValue = map['hotCachePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leaderClusterResourceId: (() { final guardedValue = map['leaderClusterResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      originalDatabaseName: (() { final guardedValue = map['originalDatabaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalsModificationKind: (() { final guardedValue = map['principalsModificationKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softDeletePeriod: (() { final guardedValue = map['softDeletePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return DatabaseStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      suspensionDetails: (() { final guardedValue = map['suspensionDetails']; if (guardedValue == null) return null; return SuspensionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tableLevelSharingProperties: (() { final guardedValue = map['tableLevelSharingProperties']; if (guardedValue == null) return null; return TableLevelSharingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
