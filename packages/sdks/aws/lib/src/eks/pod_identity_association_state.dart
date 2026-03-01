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
    pulumi.Output<String>? associationArn,
    pulumi.Output<String>? associationId,
    pulumi.Output<String>? clusterName,
    pulumi.Output<bool>? disableSessionTags,
    pulumi.Output<String>? externalId,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetRoleArn,
  }) :
      associationArn = pulumi.Input.asOptionalInput<String>(associationArn),
      associationId = pulumi.Input.asOptionalInput<String>(associationId),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      disableSessionTags = pulumi.Input.asOptionalInput<bool>(disableSessionTags),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetRoleArn = pulumi.Input.asOptionalInput<String>(targetRoleArn);

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
      associationArn: map['associationArn'] == null ? null : pulumi.Output.create<String>(map['associationArn'] as String),
      associationId: map['associationId'] == null ? null : pulumi.Output.create<String>(map['associationId'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      disableSessionTags: map['disableSessionTags'] == null ? null : pulumi.Output.create<bool>(map['disableSessionTags'] as bool),
      externalId: map['externalId'] == null ? null : pulumi.Output.create<String>(map['externalId'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetRoleArn: map['targetRoleArn'] == null ? null : pulumi.Output.create<String>(map['targetRoleArn'] as String),
    );
  }
}

