// ignore_for_file: unused_element, unnecessary_cast


/// Schema Properties
class SchemaPropertiesResponse {
  /// Current Version of schema
  final String currentVersion;
  /// Provisioning state of resource
  final String provisioningState;

  /// Creates a new [SchemaPropertiesResponse].
  /// [currentVersion] Current Version of schema
  /// [provisioningState] Provisioning state of resource
  SchemaPropertiesResponse({
    required this.currentVersion,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVersion': currentVersion,
      'provisioningState': provisioningState,
    };
  }

  factory SchemaPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchemaPropertiesResponse(
      currentVersion: map['currentVersion'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

