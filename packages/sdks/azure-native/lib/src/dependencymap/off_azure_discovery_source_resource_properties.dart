// ignore_for_file: unused_element, unnecessary_cast


/// OffAzure discovery source resource properties
class OffAzureDiscoverySourceResourceProperties {
  /// Source ArmId of Discovery Source resource
  final String sourceId;
  /// Source type of the discoverySource
  /// Expected value is 'OffAzure'.
  final String sourceType;

  /// Creates a new [OffAzureDiscoverySourceResourceProperties].
  /// [sourceId] Source ArmId of Discovery Source resource
  /// [sourceType] Source type of the discoverySource
  OffAzureDiscoverySourceResourceProperties({
    required this.sourceId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceId': sourceId,
      'sourceType': sourceType,
    };
  }

  factory OffAzureDiscoverySourceResourceProperties.fromMap(Map<String, dynamic> map) {
    return OffAzureDiscoverySourceResourceProperties(
      sourceId: map['sourceId'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

