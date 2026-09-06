// ignore_for_file: unused_element, unnecessary_cast

import 'managed_hsm_properties_response.dart';
import 'managed_hsm_sku_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedHsm.
class GetManagedHsmResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Azure Resource Manager resource ID for the managed HSM Pool.
  final String? id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  final String? location;
  /// The name of the managed HSM Pool.
  final String? name;
  /// Properties of the managed HSM
  final ManagedHsmPropertiesResponse? properties;
  /// SKU details
  final ManagedHsmSkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the key vault resource.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// The resource type of the managed HSM Pool.
  final String? type;

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
  const GetManagedHsmResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.properties,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetManagedHsmResult.fromMap(Map<String, dynamic> map) {
    return GetManagedHsmResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ManagedHsmPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ManagedHsmSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
