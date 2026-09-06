// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_response_default_ingestion_settings.dart';
import 'azure_monitor_workspace_response_metrics.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureMonitorWorkspace.
class GetAzureMonitorWorkspaceResult {
  /// The immutable Id of the Azure Monitor Workspace. This property is read-only.
  final String? accountId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Data Collection Rule and Endpoint used for ingestion by default.
  final AzureMonitorWorkspaceResponseDefaultIngestionSettings? defaultIngestionSettings;
  /// Resource entity tag (ETag)
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Properties related to the metrics container in the Azure Monitor Workspace
  final AzureMonitorWorkspaceResponseMetrics? metrics;
  /// The name of the resource
  final String? name;
  /// List of private endpoint connections
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioning state of the Azure Monitor Workspace. Set to Succeeded if everything is healthy.
  final String? provisioningState;
  /// Gets or sets allow or disallow public network access to Azure Monitor Workspace
  final String? publicNetworkAccess;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAzureMonitorWorkspaceResult].
  /// [accountId] The immutable Id of the Azure Monitor Workspace. This property is read-only.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultIngestionSettings] The Data Collection Rule and Endpoint used for ingestion by default.
  /// [etag] Resource entity tag (ETag)
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [metrics] Properties related to the metrics container in the Azure Monitor Workspace
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections
  /// [provisioningState] The provisioning state of the Azure Monitor Workspace. Set to Succeeded if everything is healthy.
  /// [publicNetworkAccess] Gets or sets allow or disallow public network access to Azure Monitor Workspace
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAzureMonitorWorkspaceResult({
    this.accountId,
    this.azureApiVersion,
    this.defaultIngestionSettings,
    this.etag,
    this.id,
    this.location,
    this.metrics,
    this.name,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'azureApiVersion': ?azureApiVersion,
      'defaultIngestionSettings': ?defaultIngestionSettings?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'metrics': ?metrics?.toMap(),
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAzureMonitorWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetAzureMonitorWorkspaceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultIngestionSettings: (() { final guardedValue = map['defaultIngestionSettings']; if (guardedValue == null) return null; return AzureMonitorWorkspaceResponseDefaultIngestionSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return AzureMonitorWorkspaceResponseMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
