// ignore_for_file: unused_element, unnecessary_cast


/// The managed resource model.
class ManagedResourceReferenceResponse {
  /// denyAssignment settings applied to the resource.
  final String? denyStatus;
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final String id;
  /// Current management state of the resource in the deployment stack.
  final String? status;

  /// Creates a new [ManagedResourceReferenceResponse].
  /// [denyStatus] denyAssignment settings applied to the resource.
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  /// [status] Current management state of the resource in the deployment stack.
  ManagedResourceReferenceResponse({
    this.denyStatus,
    required this.id,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denyStatus': ?denyStatus,
      'id': id,
      'status': ?status,
    };
  }

  factory ManagedResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceReferenceResponse(
      denyStatus: map['denyStatus'] == null ? null : map['denyStatus'] as String,
      id: map['id'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

