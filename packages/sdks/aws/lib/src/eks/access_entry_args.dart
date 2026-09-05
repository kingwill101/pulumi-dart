// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_access_entry_access_entry_args_doc}
/// The set of arguments for AccessEntry.
/// {@endtemplate}
/// {@macro pulumi_eks_access_entry_access_entry_args_doc}
class AccessEntryArgs {
  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;
  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  final pulumi.Input<List<String>?>? kubernetesGroups;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  final pulumi.Input<String?>? type;
  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  final pulumi.Input<String?>? userName;

  /// Creates a new [AccessEntryArgs].
  /// [clusterName] Name of the EKS Cluster.
  /// [kubernetesGroups] List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  /// [userName] Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  const AccessEntryArgs({
    required this.clusterName,
    this.kubernetesGroups,
    required this.principalArn,
    this.region,
    this.tags,
    this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'kubernetesGroups': ?kubernetesGroups,
      'principalArn': principalArn,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory AccessEntryArgs.fromMap(Map<String, dynamic> map) {
    return AccessEntryArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      kubernetesGroups: (() { final guardedValue = map['kubernetesGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalArn: pulumi.Input.fromValue(map['principalArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
