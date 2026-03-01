// ignore_for_file: unused_element, unnecessary_cast


/// The reference to a user assigned identity associated with the Batch pool which a compute node will use.
class ComputeNodeIdentityReference {
  /// The ARM resource id of the user assigned identity.
  final String? resourceId;

  /// Creates a new [ComputeNodeIdentityReference].
  /// [resourceId] The ARM resource id of the user assigned identity.
  ComputeNodeIdentityReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ComputeNodeIdentityReference.fromMap(Map<String, dynamic> map) {
    return ComputeNodeIdentityReference(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

