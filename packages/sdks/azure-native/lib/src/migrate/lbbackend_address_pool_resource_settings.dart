// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines load balancer backend address pool properties.
class LBBackendAddressPoolResourceSettings {
  /// Gets or sets the backend address pool name.
  final pulumi.Input<String>? name;

  /// Creates a new [LBBackendAddressPoolResourceSettings].
  /// [name] Gets or sets the backend address pool name.
  LBBackendAddressPoolResourceSettings({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory LBBackendAddressPoolResourceSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return LBBackendAddressPoolResourceSettings(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
