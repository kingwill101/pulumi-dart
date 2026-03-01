// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_endpoint_acl_policies_get_endpoint_acl_policies_args_doc}
/// Arguments for getEndpointAclPolicies.
/// {@endtemplate}
/// {@macro pulumi_cr_get_endpoint_acl_policies_get_endpoint_acl_policies_args_doc}
class GetEndpointAclPoliciesArgs {
  /// The type of endpoint. Valid values: `internet`.
  final pulumi.Input<String> endpointType;
  /// A list of Endpoint Acl Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the CR Instance.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEndpointAclPoliciesArgs].
  /// [endpointType] The type of endpoint. Valid values: `internet`.
  /// [ids] A list of Endpoint Acl Policy IDs.
  /// [instanceId] The ID of the CR Instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEndpointAclPoliciesArgs({
    required String endpointType,
    List<String>? ids,
    required String instanceId,
    String? outputFile,
  }) :
      endpointType = pulumi.Input.asInput<String>(endpointType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetEndpointAclPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointAclPoliciesArgs(
      endpointType: map['endpointType'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

