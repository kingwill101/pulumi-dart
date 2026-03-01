// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_capability.dart';
import 'sku_cost.dart';
import 'sku_location_info.dart';
import 'sku_setting_capacity.dart';

class SkuSetting {
  /// The capabilities.
  final List<SkuCapability>? capabilities;
  /// The capacity.
  final SkuSettingCapacity? capacity;
  /// The costs.
  final List<SkuCost>? costs;
  /// The family.
  final String? family;
  /// The kind.
  final String? kind;
  /// The location info.
  final List<SkuLocationInfo>? locationInfo;
  /// The locations.
  final List<String>? locations;
  /// The name.
  final String name;
  /// The required features.
  final List<String>? requiredFeatures;
  /// The required quota ids.
  final List<String>? requiredQuotaIds;
  /// The size.
  final String? size;
  /// The tier.
  final String? tier;

  /// Creates a new [SkuSetting].
  /// [capabilities] The capabilities.
  /// [capacity] The capacity.
  /// [costs] The costs.
  /// [family] The family.
  /// [kind] The kind.
  /// [locationInfo] The location info.
  /// [locations] The locations.
  /// [name] The name.
  /// [requiredFeatures] The required features.
  /// [requiredQuotaIds] The required quota ids.
  /// [size] The size.
  /// [tier] The tier.
  SkuSetting({
    this.capabilities,
    this.capacity,
    this.costs,
    this.family,
    this.kind,
    this.locationInfo,
    this.locations,
    required this.name,
    this.requiredFeatures,
    this.requiredQuotaIds,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : pulumi.Input.encodeList<SkuCapability, Map<String, dynamic>>(capabilities!, (value) => value.toMap()),
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'costs': ?costs == null ? null : pulumi.Input.encodeList<SkuCost, Map<String, dynamic>>(costs!, (value) => value.toMap()),
      'family': ?family,
      'kind': ?kind,
      'locationInfo': ?locationInfo == null ? null : pulumi.Input.encodeList<SkuLocationInfo, Map<String, dynamic>>(locationInfo!, (value) => value.toMap()),
      'locations': ?locations,
      'name': name,
      'requiredFeatures': ?requiredFeatures,
      'requiredQuotaIds': ?requiredQuotaIds,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SkuSetting.fromMap(Map<String, dynamic> map) {
    return SkuSetting(
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<SkuCapability>(map['capabilities'], (value) => SkuCapability.fromMap((value as Map).cast<String, dynamic>())),
      capacity: map['capacity'] == null ? null : SkuSettingCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      costs: map['costs'] == null ? null : pulumi.Input.decodeList<SkuCost>(map['costs'], (value) => SkuCost.fromMap((value as Map).cast<String, dynamic>())),
      family: map['family'] == null ? null : map['family'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      locationInfo: map['locationInfo'] == null ? null : pulumi.Input.decodeList<SkuLocationInfo>(map['locationInfo'], (value) => SkuLocationInfo.fromMap((value as Map).cast<String, dynamic>())),
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      name: map['name'] as String,
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
      requiredQuotaIds: map['requiredQuotaIds'] == null ? null : (map['requiredQuotaIds'] as List).cast<String>(),
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

