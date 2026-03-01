// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of the managed resource group associated with the resource.
class ManagedResourceGroupConfigurationResponse {
  /// The resource group location.
  final String location;
  /// The resource group name.
  final String name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [location] The resource group location.
  /// [name] The resource group name.
  ManagedResourceGroupConfigurationResponse({
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
    };
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfigurationResponse(
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}

