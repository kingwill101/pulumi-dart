// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_acl_policies_policy.dart';

/// Result data returned by getEndpointAclPolicies.
class GetEndpointAclPoliciesResult {
  final String endpointType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? outputFile;
  final List<GetEndpointAclPoliciesPolicy> policies;

  /// Creates a new [GetEndpointAclPoliciesResult].
  /// [endpointType] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [outputFile] Optional.
  /// [policies] Required.
  const GetEndpointAclPoliciesResult({
    required this.endpointType,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.outputFile,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetEndpointAclPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
    };
  }

  factory GetEndpointAclPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointAclPoliciesResult(
      endpointType: map['endpointType'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: pulumi.Input.decodeList<GetEndpointAclPoliciesPolicy>(map['policies']!, (value) => GetEndpointAclPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

