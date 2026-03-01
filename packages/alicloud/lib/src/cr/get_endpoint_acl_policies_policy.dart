// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointAclPoliciesPolicy {
  /// The description of the entry.
  final String description;
  /// The type of endpoint.
  final String endpointType;
  /// The IP segment that allowed to access.
  final String entry;
  /// The ID of the Endpoint Acl Policy.
  final String id;
  /// The ID of the CR Instance.
  final String instanceId;

  /// Creates a new [GetEndpointAclPoliciesPolicy].
  /// [description] The description of the entry.
  /// [endpointType] The type of endpoint.
  /// [entry] The IP segment that allowed to access.
  /// [id] The ID of the Endpoint Acl Policy.
  /// [instanceId] The ID of the CR Instance.
  GetEndpointAclPoliciesPolicy({
    required this.description,
    required this.endpointType,
    required this.entry,
    required this.id,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'endpointType': endpointType,
      'entry': entry,
      'id': id,
      'instanceId': instanceId,
    };
  }

  factory GetEndpointAclPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetEndpointAclPoliciesPolicy(
      description: map['description'] as String,
      endpointType: map['endpointType'] as String,
      entry: map['entry'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

