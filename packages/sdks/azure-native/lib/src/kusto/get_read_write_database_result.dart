// ignore_for_file: unused_element, unnecessary_cast

import 'database_statistics_response.dart';
import 'key_vault_properties_response.dart';
import 'suspension_details_response.dart';

/// Result data returned by getReadWriteDatabase.
class GetReadWriteDatabaseResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final String? hotCachePeriod;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Indicates whether the database is followed.
  final bool? isFollowed;
  /// KeyVault properties for the database encryption.
  final KeyVaultPropertiesResponse? keyVaultProperties;
  /// Kind of the database
  /// Expected value is 'ReadWrite'.
  final String? kind;
  /// Resource location.
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  final String? softDeletePeriod;
  /// The statistics of the database.
  final DatabaseStatisticsResponse? statistics;
  /// The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
  final SuspensionDetailsResponse? suspensionDetails;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetReadWriteDatabaseResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hotCachePeriod] The time the data should be kept in cache for fast queries in TimeSpan.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isFollowed] Indicates whether the database is followed.
  /// [keyVaultProperties] KeyVault properties for the database encryption.
  /// [kind] Kind of the database
  /// [location] Resource location.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries in TimeSpan.
  /// [statistics] The statistics of the database.
  /// [suspensionDetails] The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetReadWriteDatabaseResult({
    this.azureApiVersion,
    this.hotCachePeriod,
    this.id,
    this.isFollowed,
    this.keyVaultProperties,
    this.kind,
    this.location,
    this.name,
    this.provisioningState,
    this.softDeletePeriod,
    this.statistics,
    this.suspensionDetails,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'hotCachePeriod': ?hotCachePeriod,
      'id': ?id,
      'isFollowed': ?isFollowed,
      'keyVaultProperties': ?keyVaultProperties?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'softDeletePeriod': ?softDeletePeriod,
      'statistics': ?statistics?.toMap(),
      'suspensionDetails': ?suspensionDetails?.toMap(),
      'type': ?type,
    };
  }

  factory GetReadWriteDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetReadWriteDatabaseResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hotCachePeriod: (() { final guardedValue = map['hotCachePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isFollowed: (() { final guardedValue = map['isFollowed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softDeletePeriod: (() { final guardedValue = map['softDeletePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return DatabaseStatisticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      suspensionDetails: (() { final guardedValue = map['suspensionDetails']; if (guardedValue == null) return null; return SuspensionDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
