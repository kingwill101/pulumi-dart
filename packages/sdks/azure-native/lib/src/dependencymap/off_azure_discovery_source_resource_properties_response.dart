// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OffAzure discovery source resource properties
class OffAzureDiscoverySourceResourcePropertiesResponse {
  /// Provisioning state of Discovery Source resource.
  final pulumi.Input<String> provisioningState;
  /// Source ArmId of Discovery Source resource
  final pulumi.Input<String> sourceId;
  /// Source type of the discoverySource
  /// Expected value is 'OffAzure'.
  final pulumi.Input<String> sourceType;

  /// Creates a new [OffAzureDiscoverySourceResourcePropertiesResponse].
  /// [provisioningState] Provisioning state of Discovery Source resource.
  /// [sourceId] Source ArmId of Discovery Source resource
  /// [sourceType] Source type of the discoverySource
  OffAzureDiscoverySourceResourcePropertiesResponse({
    required this.provisioningState,
    required this.sourceId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'sourceId': sourceId,
      'sourceType': sourceType,
    };
  }

  factory OffAzureDiscoverySourceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OffAzureDiscoverySourceResourcePropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
    );
  }
}

