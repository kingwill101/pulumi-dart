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
    required this.endpointType,
    this.ids,
    required this.instanceId,
    this.outputFile,
  });

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
      endpointType: (map['endpointType'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

