// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessEntry resources.
class AccessEntryState {
  /// Amazon Resource Name (ARN) of the Access Entry.
  final pulumi.Input<String>? accessEntryArn;
  /// Name of the EKS Cluster.
  final pulumi.Input<String>? clusterName;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  final pulumi.Input<String>? createdAt;
  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  final pulumi.Input<List<String>>? kubernetesGroups;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  final pulumi.Input<String>? modifiedAt;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  final pulumi.Input<String>? type;
  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  final pulumi.Input<String>? userName;

  /// Creates a new [AccessEntryState].
  /// [accessEntryArn] Amazon Resource Name (ARN) of the Access Entry.
  /// [clusterName] Name of the EKS Cluster.
  /// [createdAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  /// [kubernetesGroups] List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] (Optional) Key-value map of resource tags, including those inherited from the provider `default_tags` configuration block.
  /// [type] Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  /// [userName] Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  AccessEntryState({
    pulumi.Output<String>? accessEntryArn,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<String>>? kubernetesGroups,
    pulumi.Output<String>? modifiedAt,
    pulumi.Output<String>? principalArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? userName,
  }) :
      accessEntryArn = pulumi.Input.asOptionalInput<String>(accessEntryArn),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      kubernetesGroups = pulumi.Input.asOptionalInput<List<String>>(kubernetesGroups),
      modifiedAt = pulumi.Input.asOptionalInput<String>(modifiedAt),
      principalArn = pulumi.Input.asOptionalInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEntryArn': ?accessEntryArn,
      'clusterName': ?clusterName,
      'createdAt': ?createdAt,
      'kubernetesGroups': ?kubernetesGroups,
      'modifiedAt': ?modifiedAt,
      'principalArn': ?principalArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory AccessEntryState.fromMap(Map<String, dynamic> map) {
    return AccessEntryState(
      accessEntryArn: map['accessEntryArn'] == null ? null : pulumi.Output.create<String>(map['accessEntryArn'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      kubernetesGroups: map['kubernetesGroups'] == null ? null : pulumi.Output.create<List<String>>((map['kubernetesGroups'] as List).cast<String>()),
      modifiedAt: map['modifiedAt'] == null ? null : pulumi.Output.create<String>(map['modifiedAt'] as String),
      principalArn: map['principalArn'] == null ? null : pulumi.Output.create<String>(map['principalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

