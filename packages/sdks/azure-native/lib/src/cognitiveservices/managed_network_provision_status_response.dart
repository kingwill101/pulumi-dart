// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the Provisioning for the managed network of a cognitive services account.
class ManagedNetworkProvisionStatusResponse {
  /// Status for the managed network of a cognitive services account.
  final pulumi.Input<String>? status;

  /// Creates a new [ManagedNetworkProvisionStatusResponse].
  /// [status] Status for the managed network of a cognitive services account.
  const ManagedNetworkProvisionStatusResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ManagedNetworkProvisionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkProvisionStatusResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
