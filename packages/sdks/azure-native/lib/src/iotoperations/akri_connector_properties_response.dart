// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnector properties.
class AkriConnectorPropertiesResponse {
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AkriConnectorPropertiesResponse].
  /// [provisioningState] The status of the last operation.
  const AkriConnectorPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory AkriConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

