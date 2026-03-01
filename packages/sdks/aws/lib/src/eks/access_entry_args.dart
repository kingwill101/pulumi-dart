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
  final pulumi.Input<List<String>>? kubernetesGroups;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  final pulumi.Input<String>? type;
  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  final pulumi.Input<String>? userName;

  /// Creates a new [AccessEntryArgs].
  /// [clusterName] Name of the EKS Cluster.
  /// [kubernetesGroups] List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  /// [userName] Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  AccessEntryArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<List<String>>? kubernetesGroups,
    required pulumi.Output<String> principalArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? userName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      kubernetesGroups = pulumi.Input.asOptionalInput<List<String>>(kubernetesGroups),
      principalArn = pulumi.Input.asInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      kubernetesGroups: map['kubernetesGroups'] == null ? null : pulumi.Output.create<List<String>>((map['kubernetesGroups'] as List).cast<String>()),
      principalArn: pulumi.Output.create<String>(map['principalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

