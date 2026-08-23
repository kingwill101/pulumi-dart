// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the Provisioning for the managed network of a cognitive services account.
class ManagedNetworkProvisionStatus {
  /// Status for the managed network of a cognitive services account.
  final pulumi.Input<String>? status;

  /// Creates a new [ManagedNetworkProvisionStatus].
  /// [status] Status for the managed network of a cognitive services account.
  const ManagedNetworkProvisionStatus({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ManagedNetworkProvisionStatus.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkProvisionStatus(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
