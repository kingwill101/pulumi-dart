// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PodIdentityAssociation.
class PodIdentityAssociationArgs {
  /// The name of the cluster to create the association in.
  final Input<String> clusterName;

  /// Disable the tags that are automatically added to role session by Amazon EKS.
  final Input<bool>? disableSessionTags;

  /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
  final Input<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  final Input<String> roleArn;

  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  ///
  /// The following arguments are optional:
  final Input<String> serviceAccount;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) of the IAM role to be chained to the the IAM role specified as `role_arn`.
  final Input<String>? targetRoleArn;

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
      clusterName: Input.asInput<String>(map['clusterName']),
      disableSessionTags:
          Input.asOptionalInput<bool>(map['disableSessionTags']),
      namespace: Input.asInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      serviceAccount: Input.asInput<String>(map['serviceAccount']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetRoleArn: Input.asOptionalInput<String>(map['targetRoleArn']),
    );
  }
}
