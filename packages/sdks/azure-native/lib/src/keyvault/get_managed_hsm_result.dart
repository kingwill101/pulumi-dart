// ignore_for_file: unused_element, unnecessary_cast

import 'managed_hsm_properties_response.dart';
import 'managed_hsm_sku_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedHsm.
class GetManagedHsmResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Azure Resource Manager resource ID for the managed HSM Pool.
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  final String? location;
  /// The name of the managed HSM Pool.
  final String name;
  /// Properties of the managed HSM
  final ManagedHsmPropertiesResponse properties;
  /// SKU details
  final ManagedHsmSkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the key vault resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// The resource type of the managed HSM Pool.
  final String type;

  /// Creates a new [GetManagedHsmResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The Azure Resource Manager resource ID for the managed HSM Pool.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The supported Azure location where the managed HSM Pool should be created.
  /// [name] The name of the managed HSM Pool.
  /// [properties] Properties of the managed HSM
  /// [sku] SKU details
  /// [systemData] Metadata pertaining to creation and last modification of the key vault resource.
  /// [tags] Resource tags
  /// [type] The resource type of the managed HSM Pool.
  GetManagedHsmResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedHsmResult.fromMap(Map<String, dynamic> map) {
    return GetManagedHsmResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: ManagedHsmPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : ManagedHsmSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

