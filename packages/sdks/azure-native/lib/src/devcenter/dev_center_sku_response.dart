// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_response.dart';

/// The resource model definition representing SKU for DevCenter resources
class DevCenterSkuResponse {
  /// Collection of name/value pairs to describe the SKU capabilities.
  final List<CapabilityResponse> capabilities;
  /// If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  final int? capacity;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here.
  final String? family;
  /// SKU supported locations.
  final List<String> locations;
  /// The name of the SKU. E.g. P3. It is typically a letter+number code
  final String name;
  /// The name of the resource type
  final String resourceType;
  /// The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  final String? size;
  /// This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  final String? tier;

  /// Creates a new [DevCenterSkuResponse].
  /// [capabilities] Collection of name/value pairs to describe the SKU capabilities.
  /// [capacity] If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  /// [family] If the service has different generations of hardware, for the same SKU, then that can be captured here.
  /// [locations] SKU supported locations.
  /// [name] The name of the SKU. E.g. P3. It is typically a letter+number code
  /// [resourceType] The name of the resource type
  /// [size] The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  /// [tier] This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  DevCenterSkuResponse({
    required this.capabilities,
    this.capacity,
    this.family,
    required this.locations,
    required this.name,
    required this.resourceType,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': pulumi.Input.encodeList<CapabilityResponse, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'capacity': ?capacity,
      'family': ?family,
      'locations': locations,
      'name': name,
      'resourceType': resourceType,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory DevCenterSkuResponse.fromMap(Map<String, dynamic> map) {
    return DevCenterSkuResponse(
      capabilities: pulumi.Input.decodeList<CapabilityResponse>(map['capabilities'], (value) => CapabilityResponse.fromMap((value as Map).cast<String, dynamic>())),
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      locations: (map['locations'] as List).cast<String>(),
      name: map['name'] as String,
      resourceType: map['resourceType'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

