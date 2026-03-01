// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnector properties.
class AkriConnectorPropertiesResponse {
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [AkriConnectorPropertiesResponse].
  /// [provisioningState] The status of the last operation.
  AkriConnectorPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory AkriConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
    );
  }
}

