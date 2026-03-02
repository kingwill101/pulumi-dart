// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_response.dart';

/// The resource model definition representing SKU for DevCenter resources
class DevCenterSkuResponse {
  /// Collection of name/value pairs to describe the SKU capabilities.
  final pulumi.Input<List<CapabilityResponse>> capabilities;
  /// If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  final pulumi.Input<int>? capacity;
  /// If the service has different generations of hardware, for the same SKU, then that can be captured here.
  final pulumi.Input<String>? family;
  /// SKU supported locations.
  final pulumi.Input<List<String>> locations;
  /// The name of the SKU. E.g. P3. It is typically a letter+number code
  final pulumi.Input<String> name;
  /// The name of the resource type
  final pulumi.Input<String> resourceType;
  /// The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.
  final pulumi.Input<String>? size;
  /// This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  final pulumi.Input<String>? tier;

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
      'capabilities': pulumi.Input.mapInputValue<List<CapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<CapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      capabilities: (pulumi.Input.decodeList<CapabilityResponse>(map['capabilities'], (value) => CapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      locations: ((map['locations'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

