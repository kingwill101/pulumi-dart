// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'location_response.dart';
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// CMK encryption at rest properties
  final EncryptionResponse? encryption;
  /// API host name.
  final String? hostName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The type of identity used for the resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Device Update account primary and failover location details
  final List<LocationResponse>? locations;
  /// The name of the resource
  final String? name;
  /// List of private endpoint connections associated with the account.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state.
  final String? provisioningState;
  /// Whether or not public network access is allowed for the account.
  final String? publicNetworkAccess;
  /// Device Update Sku
  final String? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryption] CMK encryption at rest properties
  /// [hostName] API host name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The type of identity used for the resource.
  /// [location] The geo-location where the resource lives
  /// [locations] Device Update account primary and failover location details
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections associated with the account.
  /// [provisioningState] Provisioning state.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the account.
  /// [sku] Device Update Sku
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAccountResult({
    this.azureApiVersion,
    this.encryption,
    this.hostName,
    this.id,
    this.identity,
    this.location,
    this.locations,
    this.name,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicNetworkAccess,
    String? sku,
    this.systemData,
    this.tags,
    this.type,
  }) : publicNetworkAccess = publicNetworkAccess ?? 'Enabled', sku = sku ?? 'Standard';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'encryption': ?encryption?.toMap(),
      'hostName': ?hostName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'locations': ?(() { final guardedValue = locations; if (guardedValue == null) return null; return pulumi.Input.encodeList<LocationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocationResponse>(guardedValue, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
