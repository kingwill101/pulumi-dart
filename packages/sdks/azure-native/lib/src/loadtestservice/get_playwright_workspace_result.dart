// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPlaywrightWorkspace.
class GetPlaywrightWorkspaceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The workspace data plane service API URI.
  final String? dataplaneUri;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Enables the workspace to use local authentication through service access tokens for operations.
  final String? localAuth;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The status of the last resource operation.
  final String? provisioningState;
  /// Controls the connection region for client workers to cloud-hosted browsers. When enabled, workers connect to browsers in the closest Azure region for lower latency. When disabled, workers connect to browsers in the Azure region where the workspace was created.
  final String? regionalAffinity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The workspace ID in GUID format.
  final String? workspaceId;

  /// Creates a new [GetPlaywrightWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataplaneUri] The workspace data plane service API URI.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [localAuth] Enables the workspace to use local authentication through service access tokens for operations.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last resource operation.
  /// [regionalAffinity] Controls the connection region for client workers to cloud-hosted browsers. When enabled, workers connect to browsers in the closest Azure region for lower latency. When disabled, workers connect to browsers in the Azure region where the workspace was created.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workspaceId] The workspace ID in GUID format.
  GetPlaywrightWorkspaceResult({
    this.azureApiVersion,
    this.dataplaneUri,
    this.id,
    String? localAuth,
    this.location,
    this.name,
    this.provisioningState,
    String? regionalAffinity,
    this.systemData,
    this.tags,
    this.type,
    this.workspaceId,
  }) : localAuth = localAuth ?? 'Disabled', regionalAffinity = regionalAffinity ?? 'Enabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataplaneUri': ?dataplaneUri,
      'id': ?id,
      'localAuth': ?localAuth,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'regionalAffinity': ?regionalAffinity,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetPlaywrightWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetPlaywrightWorkspaceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataplaneUri: (() { final guardedValue = map['dataplaneUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAuth: (() { final guardedValue = map['localAuth']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionalAffinity: (() { final guardedValue = map['regionalAffinity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
