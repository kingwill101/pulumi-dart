// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_response.dart';
import 'hierarchy_response.dart';

/// Context Properties
class ContextPropertiesResponse {
  /// List of Capabilities
  final pulumi.Input<List<CapabilityResponse>> capabilities;
  /// List of Hierarchies
  final pulumi.Input<List<HierarchyResponse>> hierarchies;
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ContextPropertiesResponse].
  /// [capabilities] List of Capabilities
  /// [hierarchies] List of Hierarchies
  /// [provisioningState] Provisioning state of resource
  const ContextPropertiesResponse({
    required this.capabilities,
    required this.hierarchies,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': pulumi.Input.mapInputValue<List<CapabilityResponse>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<CapabilityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hierarchies': pulumi.Input.mapInputValue<List<HierarchyResponse>, List<Map<String, dynamic>>>(hierarchies, (value) => pulumi.Input.encodeList<HierarchyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
    };
  }

  factory ContextPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContextPropertiesResponse(
      capabilities: pulumi.Input.fromValue(pulumi.Input.decodeList<CapabilityResponse>(map['capabilities']!, (value) => CapabilityResponse.fromMap((value as Map).cast<String, dynamic>()))),
      hierarchies: pulumi.Input.fromValue(pulumi.Input.decodeList<HierarchyResponse>(map['hierarchies']!, (value) => HierarchyResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
