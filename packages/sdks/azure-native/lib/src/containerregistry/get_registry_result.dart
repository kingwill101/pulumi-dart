// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_property_response.dart';
import 'identity_properties_response.dart';
import 'network_rule_set_response.dart';
import 'policies_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRegistry.
class GetRegistryResult {
  /// The value that indicates whether the admin user is enabled.
  final bool? adminUserEnabled;
  /// Enables registry-wide pull from unauthenticated clients.
  final bool? anonymousPullEnabled;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of the container registry in ISO8601 format.
  final String? creationDate;
  /// Enable a single data endpoint per region for serving data.
  final bool? dataEndpointEnabled;
  /// List of host names that will serve data when dataEndpointEnabled is true.
  final List<String>? dataEndpointHostNames;
  /// The encryption settings of container registry.
  final EncryptionPropertyResponse? encryption;
  /// The resource ID.
  final String? id;
  /// The identity of the container registry.
  final IdentityPropertiesResponse? identity;
  /// The location of the resource. This cannot be changed after the resource is created.
  final String? location;
  /// The URL that can be used to log into the container registry.
  final String? loginServer;
  /// The name of the resource.
  final String? name;
  /// Whether to allow trusted Azure services to access a network restricted registry.
  final String? networkRuleBypassOptions;
  /// The network rule set for a container registry.
  final NetworkRuleSetResponse? networkRuleSet;
  /// The policies for a container registry.
  final PoliciesResponse? policies;
  /// List of private endpoint connections for a container registry.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioning state of the container registry at the time the operation was called.
  final String? provisioningState;
  /// Whether or not public network access is allowed for the container registry.
  final String? publicNetworkAccess;
  /// The SKU of the container registry.
  final SkuResponse? sku;
  /// The status of the container registry at the time the operation was called.
  final StatusResponse? status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String? type;
  /// Whether or not zone redundancy is enabled for this container registry
  final String? zoneRedundancy;

  /// Creates a new [GetRegistryResult].
  /// [adminUserEnabled] The value that indicates whether the admin user is enabled.
  /// [anonymousPullEnabled] Enables registry-wide pull from unauthenticated clients.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of the container registry in ISO8601 format.
  /// [dataEndpointEnabled] Enable a single data endpoint per region for serving data.
  /// [dataEndpointHostNames] List of host names that will serve data when dataEndpointEnabled is true.
  /// [encryption] The encryption settings of container registry.
  /// [id] The resource ID.
  /// [identity] The identity of the container registry.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [loginServer] The URL that can be used to log into the container registry.
  /// [name] The name of the resource.
  /// [networkRuleBypassOptions] Whether to allow trusted Azure services to access a network restricted registry.
  /// [networkRuleSet] The network rule set for a container registry.
  /// [policies] The policies for a container registry.
  /// [privateEndpointConnections] List of private endpoint connections for a container registry.
  /// [provisioningState] The provisioning state of the container registry at the time the operation was called.
  /// [publicNetworkAccess] Whether or not public network access is allowed for the container registry.
  /// [sku] The SKU of the container registry.
  /// [status] The status of the container registry at the time the operation was called.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [zoneRedundancy] Whether or not zone redundancy is enabled for this container registry
  GetRegistryResult({
    bool? adminUserEnabled,
    bool? anonymousPullEnabled,
    this.azureApiVersion,
    this.creationDate,
    this.dataEndpointEnabled,
    this.dataEndpointHostNames,
    this.encryption,
    this.id,
    this.identity,
    this.location,
    this.loginServer,
    this.name,
    String? networkRuleBypassOptions,
    this.networkRuleSet,
    this.policies,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicNetworkAccess,
    this.sku,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    String? zoneRedundancy,
  }) : adminUserEnabled = adminUserEnabled ?? false, anonymousPullEnabled = anonymousPullEnabled ?? false, networkRuleBypassOptions = networkRuleBypassOptions ?? 'AzureServices', publicNetworkAccess = publicNetworkAccess ?? 'Enabled', zoneRedundancy = zoneRedundancy ?? 'Disabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUserEnabled': ?adminUserEnabled,
      'anonymousPullEnabled': ?anonymousPullEnabled,
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'dataEndpointEnabled': ?dataEndpointEnabled,
      'dataEndpointHostNames': ?dataEndpointHostNames,
      'encryption': ?encryption?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'loginServer': ?loginServer,
      'name': ?name,
      'networkRuleBypassOptions': ?networkRuleBypassOptions,
      'networkRuleSet': ?networkRuleSet?.toMap(),
      'policies': ?policies?.toMap(),
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku?.toMap(),
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      adminUserEnabled: (() { final guardedValue = map['adminUserEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      anonymousPullEnabled: (() { final guardedValue = map['anonymousPullEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataEndpointEnabled: (() { final guardedValue = map['dataEndpointEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dataEndpointHostNames: (() { final guardedValue = map['dataEndpointHostNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loginServer: (() { final guardedValue = map['loginServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkRuleBypassOptions: (() { final guardedValue = map['networkRuleBypassOptions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkRuleSet: (() { final guardedValue = map['networkRuleSet']; if (guardedValue == null) return null; return NetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return PoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneRedundancy: (() { final guardedValue = map['zoneRedundancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
