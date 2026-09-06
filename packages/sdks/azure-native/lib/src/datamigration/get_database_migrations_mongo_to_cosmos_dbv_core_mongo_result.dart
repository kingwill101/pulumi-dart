// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_info_response.dart';
import 'mongo_connection_information_response.dart';
import 'mongo_migration_collection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDatabaseMigrationsMongoToCosmosDbvCoreMongo.
class GetDatabaseMigrationsMongoToCosmosDbvCoreMongoResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of Mongo Collections to be migrated.
  final List<MongoMigrationCollectionResponse>? collectionList;
  /// Database migration end time.
  final String? endedOn;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Expected value is 'MongoToCosmosDbMongo'.
  final String? kind;
  /// Error details in case of migration failure.
  final ErrorInfoResponse? migrationFailureError;
  /// ID for current migration operation.
  final String? migrationOperationId;
  /// Resource Id of the Migration Service.
  final String? migrationService;
  /// Migration status.
  final String? migrationStatus;
  /// The name of the resource
  final String? name;
  /// Error message for migration provisioning failure, if any.
  final String? provisioningError;
  /// Provisioning State of migration. ProvisioningState as Succeeded implies that validations have been performed and migration has started.
  final String? provisioningState;
  /// Resource Id of the target resource.
  final String? scope;
  /// Source Mongo connection details.
  final MongoConnectionInformationResponse? sourceMongoConnection;
  /// Database migration start time.
  final String? startedOn;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Target Cosmos DB Mongo connection details.
  final MongoConnectionInformationResponse? targetMongoConnection;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDatabaseMigrationsMongoToCosmosDbvCoreMongoResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [collectionList] List of Mongo Collections to be migrated.
  /// [endedOn] Database migration end time.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Expected value is 'MongoToCosmosDbMongo'.
  /// [migrationFailureError] Error details in case of migration failure.
  /// [migrationOperationId] ID for current migration operation.
  /// [migrationService] Resource Id of the Migration Service.
  /// [migrationStatus] Migration status.
  /// [name] The name of the resource
  /// [provisioningError] Error message for migration provisioning failure, if any.
  /// [provisioningState] Provisioning State of migration. ProvisioningState as Succeeded implies that validations have been performed and migration has started.
  /// [scope] Resource Id of the target resource.
  /// [sourceMongoConnection] Source Mongo connection details.
  /// [startedOn] Database migration start time.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetMongoConnection] Target Cosmos DB Mongo connection details.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDatabaseMigrationsMongoToCosmosDbvCoreMongoResult({
    this.azureApiVersion,
    this.collectionList,
    this.endedOn,
    this.id,
    this.kind,
    this.migrationFailureError,
    this.migrationOperationId,
    this.migrationService,
    this.migrationStatus,
    this.name,
    this.provisioningError,
    this.provisioningState,
    this.scope,
    this.sourceMongoConnection,
    this.startedOn,
    this.systemData,
    this.targetMongoConnection,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'collectionList': ?(() { final guardedValue = collectionList; if (guardedValue == null) return null; return pulumi.Input.encodeList<MongoMigrationCollectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'endedOn': ?endedOn,
      'id': ?id,
      'kind': ?kind,
      'migrationFailureError': ?migrationFailureError?.toMap(),
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'migrationStatus': ?migrationStatus,
      'name': ?name,
      'provisioningError': ?provisioningError,
      'provisioningState': ?provisioningState,
      'scope': ?scope,
      'sourceMongoConnection': ?sourceMongoConnection?.toMap(),
      'startedOn': ?startedOn,
      'systemData': ?systemData?.toMap(),
      'targetMongoConnection': ?targetMongoConnection?.toMap(),
      'type': ?type,
    };
  }

  factory GetDatabaseMigrationsMongoToCosmosDbvCoreMongoResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMigrationsMongoToCosmosDbvCoreMongoResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collectionList: (() { final guardedValue = map['collectionList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MongoMigrationCollectionResponse>(guardedValue, (value) => MongoMigrationCollectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      endedOn: (() { final guardedValue = map['endedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationFailureError: (() { final guardedValue = map['migrationFailureError']; if (guardedValue == null) return null; return ErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      migrationOperationId: (() { final guardedValue = map['migrationOperationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationService: (() { final guardedValue = map['migrationService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationStatus: (() { final guardedValue = map['migrationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningError: (() { final guardedValue = map['provisioningError']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceMongoConnection: (() { final guardedValue = map['sourceMongoConnection']; if (guardedValue == null) return null; return MongoConnectionInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startedOn: (() { final guardedValue = map['startedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetMongoConnection: (() { final guardedValue = map['targetMongoConnection']; if (guardedValue == null) return null; return MongoConnectionInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
