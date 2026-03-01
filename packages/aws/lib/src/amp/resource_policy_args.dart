// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_timeouts.dart';

/// {@template pulumi_amp_resource_policy_resource_policy_args_doc}
/// The set of arguments for ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_amp_resource_policy_resource_policy_args_doc}
class ResourcePolicyArgs {
  /// The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The revision ID of the current resource-based policy.
  final pulumi.Input<String>? revisionId;
  final pulumi.Input<ResourcePolicyTimeouts>? timeouts;

  /// The ID of the workspace to attach the resource-based policy to.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [ResourcePolicyArgs].
  /// [policyDocument] The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revisionId] The revision ID of the current resource-based policy.
  /// [timeouts] Optional.
  /// [workspaceId] The ID of the workspace to attach the resource-based policy to.
  ResourcePolicyArgs({
    required String policyDocument,
    String? region,
    String? revisionId,
    ResourcePolicyTimeouts? timeouts,
    required String workspaceId,
  }) : policyDocument = pulumi.Input.asInput<String>(policyDocument),
       region = pulumi.Input.asOptionalInput<String>(region),
       revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
       timeouts = pulumi.Input.asOptionalInput<ResourcePolicyTimeouts>(
         timeouts,
       ),
       workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': policyDocument,
      'region': ?region,
      'revisionId': ?revisionId,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicyTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'workspaceId': workspaceId,
    };
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      policyDocument: map['policyDocument'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      revisionId: map['revisionId'] == null
          ? null
          : map['revisionId'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : ResourcePolicyTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      workspaceId: map['workspaceId'] as String,
    );
  }
}
