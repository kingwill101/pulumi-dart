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
  GetADCCatalogResult({
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
      'admins': ?admins == null ? null : pulumi.Input.encodeList<PrincipalsResponse, Map<String, dynamic>>(admins!, (value) => value.toMap()),
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
      'users': ?users == null ? null : pulumi.Input.encodeList<PrincipalsResponse, Map<String, dynamic>>(users!, (value) => value.toMap()),
    };
  }

  factory GetADCCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetADCCatalogResult(
      admins: map['admins'] == null ? null : pulumi.Input.decodeList<PrincipalsResponse>(map['admins'], (value) => PrincipalsResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      enableAutomaticUnitAdjustment: map['enableAutomaticUnitAdjustment'] == null ? null : map['enableAutomaticUnitAdjustment'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      successfullyProvisioned: map['successfullyProvisioned'] == null ? null : map['successfullyProvisioned'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      units: map['units'] == null ? null : map['units'] as int,
      users: map['users'] == null ? null : pulumi.Input.decodeList<PrincipalsResponse>(map['users'], (value) => PrincipalsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

