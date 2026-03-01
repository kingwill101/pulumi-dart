// ignore_for_file: unused_element, unnecessary_cast


/// Properties of an APM
class ApmPropertiesResponse {
  /// Non-sensitive properties for the APM
  final Map<String, String>? properties;
  /// State of the APM.
  final String provisioningState;
  /// APM Type
  final String type;

  /// Creates a new [ApmPropertiesResponse].
  /// [properties] Non-sensitive properties for the APM
  /// [provisioningState] State of the APM.
  /// [type] APM Type
  ApmPropertiesResponse({
    this.properties,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApmPropertiesResponse(
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

