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
  /// Disable the tags that are automatically added to role session by Amazon EKS.
  final pulumi.Input<bool>? disableSessionTags;
  /// The unique identifier for this association for a target IAM role. You put this value in the trust policy of the target role, in a Condition to match the sts.ExternalId.
  final pulumi.Input<String>? externalId;
  /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  final pulumi.Input<String>? roleArn;
  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? serviceAccount;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `role_arn`.
  final pulumi.Input<String>? targetRoleArn;

  /// Creates a new [PodIdentityAssociationState].
  /// [associationArn] The Amazon Resource Name (ARN) of the association.
  /// [associationId] The ID of the association.
  /// [clusterName] The name of the cluster to create the association in.
  /// [disableSessionTags] Disable the tags that are automatically added to role session by Amazon EKS.
  /// [externalId] The unique identifier for this association for a target IAM role. You put this value in the trust policy of the target role, in a Condition to match the sts.ExternalId.
  /// [namespace] The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  /// [serviceAccount] The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetRoleArn] The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `role_arn`.
  PodIdentityAssociationState({
    this.associationArn,
    this.associationId,
    this.clusterName,
    this.disableSessionTags,
    this.externalId,
    this.namespace,
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
      associationArn: map['associationArn'] == null ? null : ((map['associationArn'] as String).input()).input(),
      associationId: map['associationId'] == null ? null : ((map['associationId'] as String).input()).input(),
      clusterName: map['clusterName'] == null ? null : ((map['clusterName'] as String).input()).input(),
      disableSessionTags: map['disableSessionTags'] == null ? null : ((map['disableSessionTags'] as bool).input()).input(),
      externalId: map['externalId'] == null ? null : ((map['externalId'] as String).input()).input(),
      namespace: map['namespace'] == null ? null : ((map['namespace'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      serviceAccount: map['serviceAccount'] == null ? null : ((map['serviceAccount'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetRoleArn: map['targetRoleArn'] == null ? null : ((map['targetRoleArn'] as String).input()).input(),
    );
  }
}

