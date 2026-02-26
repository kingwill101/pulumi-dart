// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resource_policy_timeouts/resource_policy_timeouts.dart';

/// The set of arguments for ResourcePolicy.
class ResourcePolicyArgs {
  /// The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.
  ///
  /// The following arguments are optional:
  final Input<String> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The revision ID of the current resource-based policy.
  final Input<String>? revisionId;
  final Input<ResourcePolicyTimeouts>? timeouts;

  /// The ID of the workspace to attach the resource-based policy to.
  final Input<String> workspaceId;

  ResourcePolicyArgs({
    required this.policyDocument,
    this.region,
    this.revisionId,
    this.timeouts,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyDocument'] = policyDocument;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final revisionIdValue = revisionId;
    if (revisionIdValue != null) {
      map['revisionId'] = revisionIdValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<ResourcePolicyTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      policyDocument: Input.asInput<String>(map['policyDocument']),
      region: Input.asOptionalInput<String>(map['region']),
      revisionId: Input.asOptionalInput<String>(map['revisionId']),
      timeouts: Input.asOptionalInput<ResourcePolicyTimeouts>(map['timeouts']),
      workspaceId: Input.asInput<String>(map['workspaceId']),
    );
  }
}
