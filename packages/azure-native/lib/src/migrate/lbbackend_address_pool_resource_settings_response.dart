// ignore_for_file: unused_element, unnecessary_cast


/// Defines load balancer backend address pool properties.
class LBBackendAddressPoolResourceSettingsResponse {
  /// Gets or sets the backend address pool name.
  final String? name;

  /// Creates a new [LBBackendAddressPoolResourceSettingsResponse].
  /// [name] Gets or sets the backend address pool name.
  LBBackendAddressPoolResourceSettingsResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory LBBackendAddressPoolResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LBBackendAddressPoolResourceSettingsResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

