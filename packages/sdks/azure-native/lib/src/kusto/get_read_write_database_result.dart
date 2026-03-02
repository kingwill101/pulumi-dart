// ignore_for_file: unused_element, unnecessary_cast

import 'database_statistics_response.dart';
import 'key_vault_properties_response.dart';
import 'suspension_details_response.dart';

/// Result data returned by getReadWriteDatabase.
class GetReadWriteDatabaseResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The time the data should be kept in cache for fast queries in TimeSpan.
  final String? hotCachePeriod;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Indicates whether the database is followed.
  final bool isFollowed;
  /// KeyVault properties for the database encryption.
  final KeyVaultPropertiesResponse? keyVaultProperties;
  /// Kind of the database
  /// Expected value is 'ReadWrite'.
  final String kind;
  /// Resource location.
  final String? location;
  /// The name of the resource
  final String name;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// The time the data should be kept before it stops being accessible to queries in TimeSpan.
  final String? softDeletePeriod;
  /// The statistics of the database.
  final DatabaseStatisticsResponse statistics;
  /// The database suspension details. If the database is suspended, this object contains information related to the database's suspension state.
  final SuspensionDetailsResponse suspensionDetails;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetReadWriteDatabaseResult({
    required this.azureApiVersion,
    this.hotCachePeriod,
    required this.id,
    required this.isFollowed,
    this.keyVaultProperties,
    required this.kind,
    this.location,
    required this.name,
    required this.provisioningState,
    this.softDeletePeriod,
    required this.statistics,
    required this.suspensionDetails,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'hotCachePeriod': ?hotCachePeriod,
      'id': id,
      'isFollowed': isFollowed,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'kind': kind,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'softDeletePeriod': ?softDeletePeriod,
      'statistics': statistics.toMap(),
      'suspensionDetails': suspensionDetails.toMap(),
      'type': type,
    };
  }

  factory GetReadWriteDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetReadWriteDatabaseResult(
      azureApiVersion: map['azureApiVersion'] as String,
      hotCachePeriod: map['hotCachePeriod'] == null ? null : map['hotCachePeriod']! as String,
      id: map['id'] as String,
      isFollowed: map['isFollowed'] as bool,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      softDeletePeriod: map['softDeletePeriod'] == null ? null : map['softDeletePeriod']! as String,
      statistics: DatabaseStatisticsResponse.fromMap((map['statistics'] as Map).cast<String, dynamic>()),
      suspensionDetails: SuspensionDetailsResponse.fromMap((map['suspensionDetails'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

