// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principals_response.dart';

/// Result data returned by getADCCatalog.
class GetADCCatalogResult {
  /// Azure data catalog admin list.
  final List<PrincipalsResponse>? admins;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Automatic unit adjustment enabled or not.
  final bool? enableAutomaticUnitAdjustment;
  /// Resource etag
  final String? etag;
  /// Resource Id
  final String id;
  /// Resource location
  final String? location;
  /// Resource name
  final String name;
  /// Azure data catalog SKU.
  final String? sku;
  /// Azure data catalog provision status.
  final bool? successfullyProvisioned;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String type;
  /// Azure data catalog units.
  final int? units;
  /// Azure data catalog user list.
  final List<PrincipalsResponse>? users;

  /// Creates a new [GetADCCatalogResult].
  /// [admins] Azure data catalog admin list.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enableAutomaticUnitAdjustment] Automatic unit adjustment enabled or not.
  /// [etag] Resource etag
  /// [id] Resource Id
  /// [location] Resource location
  /// [name] Resource name
  /// [sku] Azure data catalog SKU.
  /// [successfullyProvisioned] Azure data catalog provision status.
  /// [tags] Resource tags
  /// [type] Resource type
  /// [units] Azure data catalog units.
  /// [users] Azure data catalog user list.
  const GetADCCatalogResult({
    this.admins,
    required this.azureApiVersion,
    this.enableAutomaticUnitAdjustment,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    this.sku,
    this.successfullyProvisioned,
    this.tags,
    required this.type,
    this.units,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admins': ?(() { final guardedValue = admins; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrincipalsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'enableAutomaticUnitAdjustment': ?enableAutomaticUnitAdjustment,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'sku': ?sku,
      'successfullyProvisioned': ?successfullyProvisioned,
      'tags': ?tags,
      'type': type,
      'units': ?units,
      'users': ?(() { final guardedValue = users; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrincipalsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetADCCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetADCCatalogResult(
      admins: (() { final guardedValue = map['admins']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrincipalsResponse>(guardedValue, (value) => PrincipalsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      enableAutomaticUnitAdjustment: (() { final guardedValue = map['enableAutomaticUnitAdjustment']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      successfullyProvisioned: (() { final guardedValue = map['successfullyProvisioned']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      units: (() { final guardedValue = map['units']; if (guardedValue == null) return null; return guardedValue as int; })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrincipalsResponse>(guardedValue, (value) => PrincipalsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
