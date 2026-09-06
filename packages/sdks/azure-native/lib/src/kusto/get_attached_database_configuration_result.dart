// ignore_for_file: unused_element, unnecessary_cast

import 'table_level_sharing_properties_response.dart';

/// Result data returned by getAttachedDatabaseConfiguration.
class GetAttachedDatabaseConfigurationResult {
  /// The list of databases from the clusterResourceId which are currently attached to the cluster.
  final List<String>? attachedDatabaseNames;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource id of the cluster where the databases you would like to attach reside.
  final String? clusterResourceId;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  final String? databaseName;
  /// Overrides the original database name. Relevant only when attaching to a specific database.
  final String? databaseNameOverride;
  /// Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  final String? databaseNamePrefix;
  /// The default principals modification kind
  final String? defaultPrincipalsModificationKind;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Resource location.
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// Table level sharing specifications
  final TableLevelSharingPropertiesResponse? tableLevelSharingProperties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAttachedDatabaseConfigurationResult].
  /// [attachedDatabaseNames] The list of databases from the clusterResourceId which are currently attached to the cluster.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterResourceId] The resource id of the cluster where the databases you would like to attach reside.
  /// [databaseName] The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  /// [databaseNameOverride] Overrides the original database name. Relevant only when attaching to a specific database.
  /// [databaseNamePrefix] Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  /// [defaultPrincipalsModificationKind] The default principals modification kind
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] Resource location.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [tableLevelSharingProperties] Table level sharing specifications
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAttachedDatabaseConfigurationResult({
    this.attachedDatabaseNames,
    this.azureApiVersion,
    this.clusterResourceId,
    this.databaseName,
    this.databaseNameOverride,
    this.databaseNamePrefix,
    this.defaultPrincipalsModificationKind,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.tableLevelSharingProperties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseNames': ?attachedDatabaseNames,
      'azureApiVersion': ?azureApiVersion,
      'clusterResourceId': ?clusterResourceId,
      'databaseName': ?databaseName,
      'databaseNameOverride': ?databaseNameOverride,
      'databaseNamePrefix': ?databaseNamePrefix,
      'defaultPrincipalsModificationKind': ?defaultPrincipalsModificationKind,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'tableLevelSharingProperties': ?tableLevelSharingProperties?.toMap(),
      'type': ?type,
    };
  }

  factory GetAttachedDatabaseConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedDatabaseConfigurationResult(
      attachedDatabaseNames: (() { final guardedValue = map['attachedDatabaseNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterResourceId: (() { final guardedValue = map['clusterResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseNameOverride: (() { final guardedValue = map['databaseNameOverride']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseNamePrefix: (() { final guardedValue = map['databaseNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPrincipalsModificationKind: (() { final guardedValue = map['defaultPrincipalsModificationKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableLevelSharingProperties: (() { final guardedValue = map['tableLevelSharingProperties']; if (guardedValue == null) return null; return TableLevelSharingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
