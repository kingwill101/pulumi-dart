// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_timeouts.dart';

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? policyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The revision ID of the current resource-based policy.
  final pulumi.Input<String>? revisionId;
  final pulumi.Input<ResourcePolicyTimeouts>? timeouts;
  /// The ID of the workspace to attach the resource-based policy to.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ResourcePolicyState].
  /// [policyDocument] The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revisionId] The revision ID of the current resource-based policy.
  /// [timeouts] Optional.
  /// [workspaceId] The ID of the workspace to attach the resource-based policy to.
  ResourcePolicyState({
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? region,
    pulumi.Output<String>? revisionId,
    pulumi.Output<ResourcePolicyTimeouts>? timeouts,
    pulumi.Output<String>? workspaceId,
  }) :
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      timeouts = pulumi.Input.asOptionalInput<ResourcePolicyTimeouts>(timeouts),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDocument': ?policyDocument,
      'region': ?region,
      'revisionId': ?revisionId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'workspaceId': ?workspaceId,
    };
  }

  factory ResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyState(
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ResourcePolicyTimeouts>(ResourcePolicyTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

