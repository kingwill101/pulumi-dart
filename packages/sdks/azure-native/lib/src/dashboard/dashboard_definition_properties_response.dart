// ignore_for_file: unused_element, unnecessary_cast


/// Properties specific to the dashboard definition.
class DashboardDefinitionPropertiesResponse {
  /// The provisioning state of the dashboard definition resource.
  final String provisioningState;
  /// The dashboard definition data in JSON format.
  final String? serializedData;

  /// Creates a new [DashboardDefinitionPropertiesResponse].
  /// [provisioningState] The provisioning state of the dashboard definition resource.
  /// [serializedData] The dashboard definition data in JSON format.
  DashboardDefinitionPropertiesResponse({
    required this.provisioningState,
    this.serializedData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'serializedData': ?serializedData,
    };
  }

  factory DashboardDefinitionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DashboardDefinitionPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      serializedData: map['serializedData'] == null ? null : map['serializedData'] as String,
    );
  }
}

