// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_policy_identity_response.dart';
import 'properties_response_encryption.dart';
import 'properties_response_lockbox.dart';
import 'properties_response_network_injection.dart';
import 'system_data_response.dart';

/// Result data returned by getEnterprisePolicy.
class GetEnterprisePolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The encryption settings for a configuration store.
  final PropertiesResponseEncryption? encryption;
  /// The health status of the resource.
  final String? healthStatus;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the EnterprisePolicy.
  final EnterprisePolicyIdentityResponse? identity;
  /// The kind (type) of Enterprise Policy.
  final String kind;
  /// The geo-location where the resource lives
  final String location;
  /// Settings concerning lockbox.
  final PropertiesResponseLockbox? lockbox;
  /// The name of the resource
  final String name;
  /// Settings concerning network injection.
  final PropertiesResponseNetworkInjection? networkInjection;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The internally assigned unique identifier of the resource.
  final String systemId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEnterprisePolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryption] The encryption settings for a configuration store.
  /// [healthStatus] The health status of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the EnterprisePolicy.
  /// [kind] The kind (type) of Enterprise Policy.
  /// [location] The geo-location where the resource lives
  /// [lockbox] Settings concerning lockbox.
  /// [name] The name of the resource
  /// [networkInjection] Settings concerning network injection.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [systemId] The internally assigned unique identifier of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEnterprisePolicyResult({
    required this.azureApiVersion,
    this.encryption,
    this.healthStatus,
    required this.id,
    this.identity,
    required this.kind,
    required this.location,
    this.lockbox,
    required this.name,
    this.networkInjection,
    required this.systemData,
    required this.systemId,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'healthStatus': ?healthStatus,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': kind,
      'location': location,
      'lockbox': ?lockbox == null ? null : lockbox!.toMap(),
      'name': name,
      'networkInjection': ?networkInjection == null ? null : networkInjection!.toMap(),
      'systemData': systemData.toMap(),
      'systemId': systemId,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetEnterprisePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetEnterprisePolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      encryption: map['encryption'] == null ? null : PropertiesResponseEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      healthStatus: map['healthStatus'] == null ? null : map['healthStatus'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : EnterprisePolicyIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] as String,
      lockbox: map['lockbox'] == null ? null : PropertiesResponseLockbox.fromMap((map['lockbox'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkInjection: map['networkInjection'] == null ? null : PropertiesResponseNetworkInjection.fromMap((map['networkInjection'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      systemId: map['systemId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

