// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AccessEntry.
class AccessEntryArgs {
  /// Name of the EKS Cluster.
  final Input<String> clusterName;

  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  final Input<List<String>>? kubernetesGroups;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  ///
  /// The following arguments are optional:
  final Input<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  final Input<String>? type;

  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  final Input<String>? userName;

  AccessEntryArgs({
    required this.clusterName,
    this.kubernetesGroups,
    required this.principalArn,
    this.region,
    this.tags,
    this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    final kubernetesGroupsValue = kubernetesGroups;
    if (kubernetesGroupsValue != null) {
      map['kubernetesGroups'] = kubernetesGroupsValue;
    }
    map['principalArn'] = principalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    return map;
  }

  factory AccessEntryArgs.fromMap(Map<String, dynamic> map) {
    return AccessEntryArgs(
      clusterName: Input.asInput<String>(map['clusterName']),
      kubernetesGroups:
          Input.asOptionalInput<List<String>>(map['kubernetesGroups']),
      principalArn: Input.asInput<String>(map['principalArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
      userName: Input.asOptionalInput<String>(map['userName']),
    );
  }
}
