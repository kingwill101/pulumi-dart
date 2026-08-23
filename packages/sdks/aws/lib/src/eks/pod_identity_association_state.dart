// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PodIdentityAssociation resources.
class PodIdentityAssociationState {
  /// The Amazon Resource Name (ARN) of the association.
  final pulumi.Input<String>? associationArn;
  /// The ID of the association.
  final pulumi.Input<String>? associationId;
  /// The name of the cluster to create the association in.
  final pulumi.Input<String>? clusterName;
  /// Disable the tags that are automatically added to role session by Amazon EKS. Must be set to `true` when `policy` is specified.
  final pulumi.Input<bool>? disableSessionTags;
  /// The unique identifier for this association for a target IAM role. You put this value in the trust policy of the target role, in a Condition to match the sts.ExternalId.
  final pulumi.Input<String>? externalId;
  /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  final pulumi.Input<String>? namespace;
  /// An IAM policy in JSON format (as an escaped string) that applies additional restrictions to this Pod Identity association beyond the IAM policies attached to the IAM role. The effective permissions are the intersection of the role's policies and this policy, allowing you to enforce least privilege across multiple associations that share the same role. Requires `disableSessionTags = true`.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  final pulumi.Input<String>? roleArn;
  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? serviceAccount;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `roleArn`.
  final pulumi.Input<String>? targetRoleArn;

  /// Creates a new [PodIdentityAssociationState].
  /// [associationArn] The Amazon Resource Name (ARN) of the association.
  /// [associationId] The ID of the association.
  /// [clusterName] The name of the cluster to create the association in.
  /// [disableSessionTags] Disable the tags that are automatically added to role session by Amazon EKS. Must be set to `true` when `policy` is specified.
  /// [externalId] The unique identifier for this association for a target IAM role. You put this value in the trust policy of the target role, in a Condition to match the sts.ExternalId.
  /// [namespace] The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  /// [policy] An IAM policy in JSON format (as an escaped string) that applies additional restrictions to this Pod Identity association beyond the IAM policies attached to the IAM role. The effective permissions are the intersection of the role's policies and this policy, allowing you to enforce least privilege across multiple associations that share the same role. Requires `disableSessionTags = true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  /// [serviceAccount] The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetRoleArn] The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `roleArn`.
  const PodIdentityAssociationState({
    this.associationArn,
    this.associationId,
    this.clusterName,
    this.disableSessionTags,
    this.externalId,
    this.namespace,
    this.policy,
    this.region,
    this.roleArn,
    this.serviceAccount,
    this.tags,
    this.tagsAll,
    this.targetRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationArn': ?associationArn,
      'associationId': ?associationId,
      'clusterName': ?clusterName,
      'disableSessionTags': ?disableSessionTags,
      'externalId': ?externalId,
      'namespace': ?namespace,
      'policy': ?policy,
      'region': ?region,
      'roleArn': ?roleArn,
      'serviceAccount': ?serviceAccount,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetRoleArn': ?targetRoleArn,
    };
  }

  factory PodIdentityAssociationState.fromMap(Map<String, dynamic> map) {
    return PodIdentityAssociationState(
      associationArn: (() { final guardedValue = map['associationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableSessionTags: (() { final guardedValue = map['disableSessionTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetRoleArn: (() { final guardedValue = map['targetRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
