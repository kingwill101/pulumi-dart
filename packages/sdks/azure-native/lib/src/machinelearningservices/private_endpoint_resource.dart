// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The PE network resource that is linked to this PE connection.
class PrivateEndpointResource {
  /// The subnetId that the private endpoint is connected to.
  final pulumi.Input<String>? subnetArmId;

  /// Creates a new [PrivateEndpointResource].
  /// [subnetArmId] The subnetId that the private endpoint is connected to.
  PrivateEndpointResource({this.subnetArmId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnetArmId': ?subnetArmId};
  }

  factory PrivateEndpointResource.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResource(
      subnetArmId: (() {
        final guardedValue = map['subnetArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
