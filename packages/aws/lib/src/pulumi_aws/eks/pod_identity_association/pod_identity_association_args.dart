// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PodIdentityAssociation.
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

  PodIdentityAssociationArgs({
    required this.clusterName,
    this.disableSessionTags,
    required this.namespace,
    this.region,
    required this.roleArn,
    required this.serviceAccount,
    this.tags,
    this.targetRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    final disableSessionTagsValue = disableSessionTags;
    if (disableSessionTagsValue != null) {
      map['disableSessionTags'] = disableSessionTagsValue;
    }
    map['namespace'] = namespace;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['serviceAccount'] = serviceAccount;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetRoleArnValue = targetRoleArn;
    if (targetRoleArnValue != null) {
      map['targetRoleArn'] = targetRoleArnValue;
    }
    return map;
  }

  factory PodIdentityAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PodIdentityAssociationArgs(
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      disableSessionTags:
          pulumi.Input.asOptionalInput<bool>(map['disableSessionTags']),
      namespace: pulumi.Input.asInput<String>(map['namespace']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      serviceAccount: pulumi.Input.asInput<String>(map['serviceAccount']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetRoleArn: pulumi.Input.asOptionalInput<String>(map['targetRoleArn']),
    );
  }
}
