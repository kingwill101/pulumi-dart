// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to a user assigned identity associated with the Batch pool which a compute node will use.
class ComputeNodeIdentityReference {
  /// The ARM resource id of the user assigned identity.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ComputeNodeIdentityReference].
  /// [resourceId] The ARM resource id of the user assigned identity.
  const ComputeNodeIdentityReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ComputeNodeIdentityReference.fromMap(Map<String, dynamic> map) {
    return ComputeNodeIdentityReference(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
