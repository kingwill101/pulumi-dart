// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information regarding how the subnet to which the gateway should be injected.
class BackendSubnetConfiguration {
  /// The ARM ID of the subnet in which the backend systems are hosted.
  final pulumi.Input<String>? id;

  /// Creates a new [BackendSubnetConfiguration].
  /// [id] The ARM ID of the subnet in which the backend systems are hosted.
  const BackendSubnetConfiguration({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory BackendSubnetConfiguration.fromMap(Map<String, dynamic> map) {
    return BackendSubnetConfiguration(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
