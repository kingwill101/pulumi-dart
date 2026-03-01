// ignore_for_file: unused_element, unnecessary_cast


/// Capability, to match in Solution Templates and Targets
class CapabilityResponse {
  /// Description of Capability
  final String description;
  /// Name of Capability
  final String name;
  /// State of resource
  final String? state;

  /// Creates a new [CapabilityResponse].
  /// [description] Description of Capability
  /// [name] Name of Capability
  /// [state] State of resource
  CapabilityResponse({
    required this.description,
    required this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'state': ?state,
    };
  }

  factory CapabilityResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityResponse(
      description: map['description'] as String,
      name: map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

