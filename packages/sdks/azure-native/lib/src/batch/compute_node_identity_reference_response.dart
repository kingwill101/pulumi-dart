// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference to a user assigned identity associated with the Batch pool which a compute node will use.
class ComputeNodeIdentityReferenceResponse {
  /// The ARM resource id of the user assigned identity.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ComputeNodeIdentityReferenceResponse].
  /// [resourceId] The ARM resource id of the user assigned identity.
  ComputeNodeIdentityReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ComputeNodeIdentityReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ComputeNodeIdentityReferenceResponse(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

