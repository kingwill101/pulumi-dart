// ignore_for_file: unused_element, unnecessary_cast


/// Managed resource group configuration
class ManagedResourceGroupConfigurationResponse {
  /// Managed resource group name
  final String? name;

  /// Creates a new [ManagedResourceGroupConfigurationResponse].
  /// [name] Managed resource group name
  ManagedResourceGroupConfigurationResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ManagedResourceGroupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceGroupConfigurationResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

