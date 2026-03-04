// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional Service settings in vnet injection instance
class ServiceVNetAddonsResponse {
  /// Indicates whether the data plane components(log stream, app connect, remote debugging) in vnet injection instance could be accessed from internet.
  final pulumi.Input<bool>? dataPlanePublicEndpoint;

  /// Indicates whether the log stream in vnet injection instance could be accessed from internet.
  final pulumi.Input<bool>? logStreamPublicEndpoint;

  /// Creates a new [ServiceVNetAddonsResponse].
  /// [dataPlanePublicEndpoint] Indicates whether the data plane components(log stream, app connect, remote debugging) in vnet injection instance could be accessed from internet.
  /// [logStreamPublicEndpoint] Indicates whether the log stream in vnet injection instance could be accessed from internet.
  ServiceVNetAddonsResponse({
    this.dataPlanePublicEndpoint,
    this.logStreamPublicEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlanePublicEndpoint': ?dataPlanePublicEndpoint,
      'logStreamPublicEndpoint': ?logStreamPublicEndpoint,
    };
  }

  factory ServiceVNetAddonsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceVNetAddonsResponse(
      dataPlanePublicEndpoint: (() {
        final guardedValue = map['dataPlanePublicEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logStreamPublicEndpoint: (() {
        final guardedValue = map['logStreamPublicEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
