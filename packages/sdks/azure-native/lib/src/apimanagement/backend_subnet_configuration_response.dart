// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information regarding how the subnet to which the gateway should be injected.
class BackendSubnetConfigurationResponse {
  /// The ARM ID of the subnet in which the backend systems are hosted.
  final pulumi.Input<String>? id;

  /// Creates a new [BackendSubnetConfigurationResponse].
  /// [id] The ARM ID of the subnet in which the backend systems are hosted.
  const BackendSubnetConfigurationResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory BackendSubnetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BackendSubnetConfigurationResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
