// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';

/// Result data returned by getInstancePool.
class GetInstancePoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Dns Zone that the managed instance pool is in.
  final String dnsZone;
  /// Resource ID.
  final String id;
  /// The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
  final String licenseType;
  /// Resource location.
  final String location;
  /// Specifies maintenance configuration id to apply to this managed instance.
  final String? maintenanceConfigurationId;
  /// Resource name.
  final String name;
  /// The name and tier of the SKU.
  final SkuResponse? sku;
  /// Resource ID of the subnet to place this instance pool in.
  final String subnetId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// Count of vCores belonging to this instance pool.
  final int vCores;

  /// Creates a new [GetInstancePoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsZone] The Dns Zone that the managed instance pool is in.
  /// [id] Resource ID.
  /// [licenseType] The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Specifies maintenance configuration id to apply to this managed instance.
  /// [name] Resource name.
  /// [sku] The name and tier of the SKU.
  /// [subnetId] Resource ID of the subnet to place this instance pool in.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [vCores] Count of vCores belonging to this instance pool.
  GetInstancePoolResult({
    required this.azureApiVersion,
    required this.dnsZone,
    required this.id,
    required this.licenseType,
    required this.location,
    this.maintenanceConfigurationId,
    required this.name,
    this.sku,
    required this.subnetId,
    this.tags,
    required this.type,
    required this.vCores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dnsZone': dnsZone,
      'id': id,
      'licenseType': licenseType,
      'location': location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'name': name,
      'sku': ?sku == null ? null : sku!.toMap(),
      'subnetId': subnetId,
      'tags': ?tags,
      'type': type,
      'vCores': vCores,
    };
  }

  factory GetInstancePoolResult.fromMap(Map<String, dynamic> map) {
    return GetInstancePoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dnsZone: map['dnsZone'] as String,
      id: map['id'] as String,
      licenseType: map['licenseType'] as String,
      location: map['location'] as String,
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : map['maintenanceConfigurationId'] as String,
      name: map['name'] as String,
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vCores: map['vCores'] as int,
    );
  }
}

