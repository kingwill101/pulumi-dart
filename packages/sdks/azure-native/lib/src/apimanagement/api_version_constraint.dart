// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Control Plane Apis version constraint for the API Management service.
class ApiVersionConstraint {
  /// Limit control plane API calls to API Management service with version equal to or newer than this value.
  final pulumi.Input<String>? minApiVersion;

  /// Creates a new [ApiVersionConstraint].
  /// [minApiVersion] Limit control plane API calls to API Management service with version equal to or newer than this value.
  ApiVersionConstraint({
    this.minApiVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minApiVersion': ?minApiVersion,
    };
  }

  factory ApiVersionConstraint.fromMap(Map<String, dynamic> map) {
    return ApiVersionConstraint(
      minApiVersion: (() { final guardedValue = map['minApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

