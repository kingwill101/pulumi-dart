// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OffAzure discovery source resource properties
class OffAzureDiscoverySourceResourceProperties {
  /// Source ArmId of Discovery Source resource
  final pulumi.Input<String> sourceId;

  /// Source type of the discoverySource
  /// Expected value is 'OffAzure'.
  final pulumi.Input<String> sourceType;

  /// Creates a new [OffAzureDiscoverySourceResourceProperties].
  /// [sourceId] Source ArmId of Discovery Source resource
  /// [sourceType] Source type of the discoverySource
  OffAzureDiscoverySourceResourceProperties({
    required this.sourceId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sourceId': sourceId, 'sourceType': sourceType};
  }

  factory OffAzureDiscoverySourceResourceProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return OffAzureDiscoverySourceResourceProperties(
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
