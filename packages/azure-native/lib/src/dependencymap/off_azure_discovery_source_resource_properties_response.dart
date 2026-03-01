// ignore_for_file: unused_element, unnecessary_cast


/// OffAzure discovery source resource properties
class OffAzureDiscoverySourceResourcePropertiesResponse {
  /// Provisioning state of Discovery Source resource.
  final String provisioningState;
  /// Source ArmId of Discovery Source resource
  final String sourceId;
  /// Source type of the discoverySource
  /// Expected value is 'OffAzure'.
  final String sourceType;

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
      provisioningState: map['provisioningState'] as String,
      sourceId: map['sourceId'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

