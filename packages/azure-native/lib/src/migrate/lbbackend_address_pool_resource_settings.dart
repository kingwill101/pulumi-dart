// ignore_for_file: unused_element, unnecessary_cast


/// Defines load balancer backend address pool properties.
class LBBackendAddressPoolResourceSettings {
  /// Gets or sets the backend address pool name.
  final String? name;

  /// Creates a new [LBBackendAddressPoolResourceSettings].
  /// [name] Gets or sets the backend address pool name.
  LBBackendAddressPoolResourceSettings({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory LBBackendAddressPoolResourceSettings.fromMap(Map<String, dynamic> map) {
    return LBBackendAddressPoolResourceSettings(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

