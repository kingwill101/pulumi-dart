// ignore_for_file: unused_element, unnecessary_cast


/// The Database Fleet properties.
class FleetPropertiesResponse {
  /// Fleet description.
  final String? description;
  /// Provisioning state.
  final String provisioningState;

  /// Creates a new [FleetPropertiesResponse].
  /// [description] Fleet description.
  /// [provisioningState] Provisioning state.
  FleetPropertiesResponse({
    this.description,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
    };
  }

  factory FleetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetPropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

