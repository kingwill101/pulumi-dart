// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_response.dart';
import 'server_private_endpoint_connection_response.dart';
import 'sku_response.dart';
import 'storage_profile_response.dart';

/// Result data returned by getSingleServer.
class GetSingleServerResult {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  final String? administratorLogin;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Status showing whether the server data encryption is enabled with customer-managed keys.
  final String byokEnforcement;
  /// Earliest restore point creation time (ISO8601 format)
  final String? earliestRestoreDate;
  /// The fully qualified domain name of a server.
  final String? fullyQualifiedDomainName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The Azure Active Directory identity of the server.
  final ResourceIdentityResponse? identity;
  /// Status showing whether the server enabled infrastructure encryption.
  final String? infrastructureEncryption;
  /// The geo-location where the resource lives
  final String location;
  /// The master server id of a replica server.
  final String? masterServerId;
  /// Enforce a minimal Tls version for the server.
  final String? minimalTlsVersion;
  /// The name of the resource
  final String name;
  /// List of private endpoint connections on a server
  final List<ServerPrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final String? publicNetworkAccess;
  /// The maximum number of replicas that a master server can have.
  final int? replicaCapacity;
  /// The replication role of the server.
  final String? replicationRole;
  /// The SKU (pricing tier) of the server.
  final SkuResponse? sku;
  /// Enable ssl enforcement or not when connect to server.
  final String? sslEnforcement;
  /// Storage profile of a server.
  final StorageProfileResponse? storageProfile;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A state of a server that is visible to user.
  final String? userVisibleState;
  /// Server version.
  final String? version;

  /// Creates a new [GetSingleServerResult].
  /// [administratorLogin] The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  /// [azureApiVersion] The Azure API version of the resource.
  /// [byokEnforcement] Status showing whether the server data encryption is enabled with customer-managed keys.
  /// [earliestRestoreDate] Earliest restore point creation time (ISO8601 format)
  /// [fullyQualifiedDomainName] The fully qualified domain name of a server.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The Azure Active Directory identity of the server.
  /// [infrastructureEncryption] Status showing whether the server enabled infrastructure encryption.
  /// [location] The geo-location where the resource lives
  /// [masterServerId] The master server id of a replica server.
  /// [minimalTlsVersion] Enforce a minimal Tls version for the server.
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections on a server
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [replicaCapacity] The maximum number of replicas that a master server can have.
  /// [replicationRole] The replication role of the server.
  /// [sku] The SKU (pricing tier) of the server.
  /// [sslEnforcement] Enable ssl enforcement or not when connect to server.
  /// [storageProfile] Storage profile of a server.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userVisibleState] A state of a server that is visible to user.
  /// [version] Server version.
  GetSingleServerResult({
    this.administratorLogin,
    required this.azureApiVersion,
    required this.byokEnforcement,
    this.earliestRestoreDate,
    this.fullyQualifiedDomainName,
    required this.id,
    this.identity,
    this.infrastructureEncryption,
    required this.location,
    this.masterServerId,
    this.minimalTlsVersion,
    required this.name,
    required this.privateEndpointConnections,
    this.publicNetworkAccess,
    this.replicaCapacity,
    this.replicationRole,
    this.sku,
    this.sslEnforcement,
    this.storageProfile,
    this.tags,
    required this.type,
    this.userVisibleState,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'azureApiVersion': azureApiVersion,
      'byokEnforcement': byokEnforcement,
      'earliestRestoreDate': ?earliestRestoreDate,
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'id': id,
      'identity': ?identity?.toMap(),
      'infrastructureEncryption': ?infrastructureEncryption,
      'location': location,
      'masterServerId': ?masterServerId,
      'minimalTlsVersion': ?minimalTlsVersion,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<ServerPrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicaCapacity': ?replicaCapacity,
      'replicationRole': ?replicationRole,
      'sku': ?sku?.toMap(),
      'sslEnforcement': ?sslEnforcement,
      'storageProfile': ?storageProfile?.toMap(),
      'tags': ?tags,
      'type': type,
      'userVisibleState': ?userVisibleState,
      'version': ?version,
    };
  }

  factory GetSingleServerResult.fromMap(Map<String, dynamic> map) {
    return GetSingleServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      byokEnforcement: map['byokEnforcement'] as String,
      earliestRestoreDate: (() { final guardedValue = map['earliestRestoreDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      infrastructureEncryption: (() { final guardedValue = map['infrastructureEncryption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      masterServerId: (() { final guardedValue = map['masterServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<ServerPrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => ServerPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicaCapacity: (() { final guardedValue = map['replicaCapacity']; if (guardedValue == null) return null; return guardedValue as int; })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sslEnforcement: (() { final guardedValue = map['sslEnforcement']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      userVisibleState: (() { final guardedValue = map['userVisibleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

