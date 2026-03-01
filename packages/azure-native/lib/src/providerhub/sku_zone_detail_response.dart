// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_capability_response.dart';

class SkuZoneDetailResponse {
  /// The capabilities.
  final List<SkuCapabilityResponse>? capabilities;
  /// The name.
  final List<String>? name;

  /// Creates a new [SkuZoneDetailResponse].
  /// [capabilities] The capabilities.
  /// [name] The name.
  SkuZoneDetailResponse({
    this.capabilities,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : pulumi.Input.encodeList<SkuCapabilityResponse, Map<String, dynamic>>(capabilities!, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory SkuZoneDetailResponse.fromMap(Map<String, dynamic> map) {
    return SkuZoneDetailResponse(
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<SkuCapabilityResponse>(map['capabilities'], (value) => SkuCapabilityResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : (map['name'] as List).cast<String>(),
    );
  }
}

