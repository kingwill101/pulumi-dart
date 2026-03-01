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
  final String azureApiVersion;
  /// The creation date of the container registry in ISO8601 format.
  final String creationDate;
  /// Enable a single data endpoint per region for serving data.
  final bool? dataEndpointEnabled;
  /// List of host names that will serve data when dataEndpointEnabled is true.
  final List<String> dataEndpointHostNames;
  /// The encryption settings of container registry.
  final EncryptionPropertyResponse? encryption;
  /// The resource ID.
  final String id;
  /// The identity of the container registry.
  final IdentityPropertiesResponse? identity;
  /// The location of the resource. This cannot be changed after the resource is created.
  final String location;
  /// The URL that can be used to log into the container registry.
  final String loginServer;
  /// The name of the resource.
  final String name;
  /// Whether to allow trusted Azure services to access a network restricted registry.
  final String? networkRuleBypassOptions;
  /// The network rule set for a container registry.
  final NetworkRuleSetResponse? networkRuleSet;
  /// The policies for a container registry.
  final PoliciesResponse? policies;
  /// List of private endpoint connections for a container registry.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The provisioning state of the container registry at the time the operation was called.
  final String provisioningState;
  /// Whether or not public network access is allowed for the container registry.
  final String? publicNetworkAccess;
  /// The SKU of the container registry.
  final SkuResponse sku;
  /// The status of the container registry at the time the operation was called.
  final StatusResponse status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
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
    this.adminUserEnabled,
    this.anonymousPullEnabled,
    required this.azureApiVersion,
    required this.creationDate,
    this.dataEndpointEnabled,
    required this.dataEndpointHostNames,
    this.encryption,
    required this.id,
    this.identity,
    required this.location,
    required this.loginServer,
    required this.name,
    this.networkRuleBypassOptions,
    this.networkRuleSet,
    this.policies,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.sku,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.zoneRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUserEnabled': ?adminUserEnabled,
      'anonymousPullEnabled': ?anonymousPullEnabled,
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'dataEndpointEnabled': ?dataEndpointEnabled,
      'dataEndpointHostNames': dataEndpointHostNames,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'loginServer': loginServer,
      'name': name,
      'networkRuleBypassOptions': ?networkRuleBypassOptions,
      'networkRuleSet': ?networkRuleSet == null ? null : networkRuleSet!.toMap(),
      'policies': ?policies == null ? null : policies!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': sku.toMap(),
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      adminUserEnabled: map['adminUserEnabled'] == null ? null : map['adminUserEnabled'] as bool,
      anonymousPullEnabled: map['anonymousPullEnabled'] == null ? null : map['anonymousPullEnabled'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      dataEndpointEnabled: map['dataEndpointEnabled'] == null ? null : map['dataEndpointEnabled'] as bool,
      dataEndpointHostNames: (map['dataEndpointHostNames'] as List).cast<String>(),
      encryption: map['encryption'] == null ? null : EncryptionPropertyResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityPropertiesResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      loginServer: map['loginServer'] as String,
      name: map['name'] as String,
      networkRuleBypassOptions: map['networkRuleBypassOptions'] == null ? null : map['networkRuleBypassOptions'] as String,
      networkRuleSet: map['networkRuleSet'] == null ? null : NetworkRuleSetResponse.fromMap((map['networkRuleSet'] as Map).cast<String, dynamic>()),
      policies: map['policies'] == null ? null : PoliciesResponse.fromMap((map['policies'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      sku: SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      status: StatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      zoneRedundancy: map['zoneRedundancy'] == null ? null : map['zoneRedundancy'] as String,
    );
  }
}

