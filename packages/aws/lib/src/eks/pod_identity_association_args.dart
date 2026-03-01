// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_pod_identity_association_pod_identity_association_args_doc}
/// The set of arguments for PodIdentityAssociation.
/// {@endtemplate}
/// {@macro pulumi_eks_pod_identity_association_pod_identity_association_args_doc}
class PodIdentityAssociationArgs {
  /// The name of the cluster to create the association in.
  final pulumi.Input<String> clusterName;

  /// Disable the tags that are automatically added to role session by Amazon EKS.
  final pulumi.Input<bool>? disableSessionTags;

  /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  final pulumi.Input<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  final pulumi.Input<String> roleArn;

  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceAccount;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `role_arn`.
  final pulumi.Input<String>? targetRoleArn;

  /// Creates a new [PodIdentityAssociationArgs].
  /// [clusterName] The name of the cluster to create the association in.
  /// [disableSessionTags] Disable the tags that are automatically added to role session by Amazon EKS.
  /// [namespace] The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  /// [serviceAccount] The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetRoleArn] The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `role_arn`.
  PodIdentityAssociationArgs({
    required String clusterName,
    bool? disableSessionTags,
    required String namespace,
    String? region,
    required String roleArn,
    required String serviceAccount,
    Map<String, String>? tags,
    String? targetRoleArn,
  }) : clusterName = pulumi.Input.asInput<String>(clusterName),
       disableSessionTags = pulumi.Input.asOptionalInput<bool>(
         disableSessionTags,
       ),
       namespace = pulumi.Input.asInput<String>(namespace),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       serviceAccount = pulumi.Input.asInput<String>(serviceAccount),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       targetRoleArn = pulumi.Input.asOptionalInput<String>(targetRoleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'disableSessionTags': ?disableSessionTags,
      'namespace': namespace,
      'region': ?region,
      'roleArn': roleArn,
      'serviceAccount': serviceAccount,
      'tags': ?tags,
      'targetRoleArn': ?targetRoleArn,
    };
  }

  factory PodIdentityAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PodIdentityAssociationArgs(
      clusterName: map['clusterName'] as String,
      disableSessionTags: map['disableSessionTags'] == null
          ? null
          : map['disableSessionTags'] as bool,
      namespace: map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      serviceAccount: map['serviceAccount'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetRoleArn: map['targetRoleArn'] == null
          ? null
          : map['targetRoleArn'] as String,
    );
  }
}
