// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration to bind a .NET Component to another .NET Component
class DotNetComponentServiceBindResponse {
  /// Name of the service bind
  final pulumi.Input<String?>? name;
  /// Resource id of the target service
  final pulumi.Input<String?>? serviceId;

  /// Creates a new [DotNetComponentServiceBindResponse].
  /// [name] Name of the service bind
  /// [serviceId] Resource id of the target service
  const DotNetComponentServiceBindResponse({
    this.name,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }

  factory DotNetComponentServiceBindResponse.fromMap(Map<String, dynamic> map) {
    return DotNetComponentServiceBindResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
