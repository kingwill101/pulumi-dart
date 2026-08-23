// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines load balancer backend address pool properties.
class LBBackendAddressPoolResourceSettingsResponse {
  /// Gets or sets the backend address pool name.
  final pulumi.Input<String>? name;

  /// Creates a new [LBBackendAddressPoolResourceSettingsResponse].
  /// [name] Gets or sets the backend address pool name.
  const LBBackendAddressPoolResourceSettingsResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory LBBackendAddressPoolResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LBBackendAddressPoolResourceSettingsResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
