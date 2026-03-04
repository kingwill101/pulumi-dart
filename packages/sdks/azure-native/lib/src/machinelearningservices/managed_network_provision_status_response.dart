// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the Provisioning for the managed network of a machine learning workspace.
class ManagedNetworkProvisionStatusResponse {
  final pulumi.Input<bool>? sparkReady;

  /// Status for the managed network of a machine learning workspace.
  final pulumi.Input<String>? status;

  /// Creates a new [ManagedNetworkProvisionStatusResponse].
  /// [sparkReady] Optional.
  /// [status] Status for the managed network of a machine learning workspace.
  ManagedNetworkProvisionStatusResponse({this.sparkReady, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sparkReady': ?sparkReady, 'status': ?status};
  }

  factory ManagedNetworkProvisionStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedNetworkProvisionStatusResponse(
      sparkReady: (() {
        final guardedValue = map['sparkReady'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
