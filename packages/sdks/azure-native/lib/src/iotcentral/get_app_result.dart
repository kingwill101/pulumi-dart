// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_sku_info_response.dart';
import 'network_rule_sets_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApp.
class GetAppResult {
  /// The ID of the application.
  final String applicationId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The display name of the application.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The managed identities for the IoT Central application.
  final SystemAssignedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Network Rule Set Properties of this IoT Central application.
  final NetworkRuleSetsResponse? networkRuleSets;
  /// Private endpoint connections created on this IoT Central application.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The provisioning state of the application.
  final String provisioningState;
  /// Whether requests from the public network are allowed.
  final String? publicNetworkAccess;
  /// A valid instance SKU.
  final AppSkuInfoResponse sku;
  /// The current state of the application.
  final String state;
  /// The subdomain of the application.
  final String? subdomain;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The ID of the application template, which is a blueprint that defines the characteristics and behaviors of an application. Optional; if not specified, defaults to a blank blueprint and allows the application to be defined from scratch.
  final String? template;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAppResult].
  /// [applicationId] The ID of the application.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] The display name of the application.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The managed identities for the IoT Central application.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkRuleSets] Network Rule Set Properties of this IoT Central application.
  /// [privateEndpointConnections] Private endpoint connections created on this IoT Central application.
  /// [provisioningState] The provisioning state of the application.
  /// [publicNetworkAccess] Whether requests from the public network are allowed.
  /// [sku] A valid instance SKU.
  /// [state] The current state of the application.
  /// [subdomain] The subdomain of the application.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [template] The ID of the application template, which is a blueprint that defines the characteristics and behaviors of an application. Optional; if not specified, defaults to a blank blueprint and allows the application to be defined from scratch.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAppResult({
    required this.applicationId,
    required this.azureApiVersion,
    this.displayName,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.networkRuleSets,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.sku,
    required this.state,
    this.subdomain,
    required this.systemData,
    this.tags,
    this.template,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'azureApiVersion': azureApiVersion,
      'displayName': ?displayName,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'networkRuleSets': ?networkRuleSets?.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': sku.toMap(),
      'state': state,
      'subdomain': ?subdomain,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'template': ?template,
      'type': type,
    };
  }

  factory GetAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppResult(
      applicationId: map['applicationId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      networkRuleSets: (() { final guardedValue = map['networkRuleSets']; if (guardedValue == null) return null; return NetworkRuleSetsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: AppSkuInfoResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
