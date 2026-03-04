// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the Provisioning for the managed network of a machine learning workspace.
class ManagedNetworkProvisionStatus {
  final pulumi.Input<bool>? sparkReady;

  /// Status for the managed network of a machine learning workspace.
  final pulumi.Input<String>? status;

  /// Creates a new [ManagedNetworkProvisionStatus].
  /// [sparkReady] Optional.
  /// [status] Status for the managed network of a machine learning workspace.
  ManagedNetworkProvisionStatus({this.sparkReady, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sparkReady': ?sparkReady, 'status': ?status};
  }

  factory ManagedNetworkProvisionStatus.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkProvisionStatus(
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
