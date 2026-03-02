// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointAclPoliciesPolicy {
  /// The description of the entry.
  final pulumi.Input<String> description;
  /// The type of endpoint.
  final pulumi.Input<String> endpointType;
  /// The IP segment that allowed to access.
  final pulumi.Input<String> entry;
  /// The ID of the Endpoint Acl Policy.
  final pulumi.Input<String> id;
  /// The ID of the CR Instance.
  final pulumi.Input<String> instanceId;

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
      description: (map['description'] as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      entry: (map['entry'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
    );
  }
}

