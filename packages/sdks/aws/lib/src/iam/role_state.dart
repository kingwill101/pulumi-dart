// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_inline_policy.dart';

/// Input properties used for looking up and filtering Role resources.
class RoleState {
  /// Amazon Resource Name (ARN) specifying the role.
  final pulumi.Input<String>? arn;
  /// Policy that grants an entity permission to assume the role.
  ///
  /// > **NOTE:** The `assume_role_policy` is very similar to but slightly different than a standard IAM policy and cannot use an `aws.iam.Policy` resource.  However, it _can_ use an `aws.iam.getPolicyDocument` data source. See the example above of how this works.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? assumeRolePolicy;
  /// Creation date of the IAM role.
  final pulumi.Input<String>? createDate;
  /// Description of the role.
  final pulumi.Input<String>? description;
  /// Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  final pulumi.Input<bool>? forceDetachPolicies;
  /// Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  final pulumi.Input<List<RoleInlinePolicy>>? inlinePolicies;
  /// Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  final pulumi.Input<List<String>>? managedPolicyArns;
  /// Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  final pulumi.Input<int>? maxSessionDuration;
  /// Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final pulumi.Input<String>? name;
  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final pulumi.Input<String>? path;
  /// ARN of the policy that is used to set the permissions boundary for the role.
  final pulumi.Input<String>? permissionsBoundary;
  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Stable and unique string identifying the role.
  final pulumi.Input<String>? uniqueId;

  /// Creates a new [RoleState].
  /// [arn] Amazon Resource Name (ARN) specifying the role.
  /// [assumeRolePolicy] Policy that grants an entity permission to assume the role.
  /// [createDate] Creation date of the IAM role.
  /// [description] Description of the role.
  /// [forceDetachPolicies] Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  /// [inlinePolicies] Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  /// [managedPolicyArns] Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  /// [maxSessionDuration] Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  /// [name] Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [namePrefix] Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  /// [permissionsBoundary] ARN of the policy that is used to set the permissions boundary for the role.
  /// [tags] Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uniqueId] Stable and unique string identifying the role.
  RoleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? assumeRolePolicy,
    pulumi.Output<String>? createDate,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? forceDetachPolicies,
    pulumi.Output<List<RoleInlinePolicy>>? inlinePolicies,
    pulumi.Output<List<String>>? managedPolicyArns,
    pulumi.Output<int>? maxSessionDuration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? path,
    pulumi.Output<String>? permissionsBoundary,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uniqueId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assumeRolePolicy = pulumi.Input.asOptionalInput<String>(assumeRolePolicy),
      createDate = pulumi.Input.asOptionalInput<String>(createDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      forceDetachPolicies = pulumi.Input.asOptionalInput<bool>(forceDetachPolicies),
      inlinePolicies = pulumi.Input.asOptionalInput<List<RoleInlinePolicy>>(inlinePolicies),
      managedPolicyArns = pulumi.Input.asOptionalInput<List<String>>(managedPolicyArns),
      maxSessionDuration = pulumi.Input.asOptionalInput<int>(maxSessionDuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      path = pulumi.Input.asOptionalInput<String>(path),
      permissionsBoundary = pulumi.Input.asOptionalInput<String>(permissionsBoundary),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assumeRolePolicy': ?assumeRolePolicy,
      'createDate': ?createDate,
      'description': ?description,
      'forceDetachPolicies': ?forceDetachPolicies,
      'inlinePolicies': ?pulumi.Input.mapOptionalInputValue<List<RoleInlinePolicy>, List<Map<String, dynamic>>>(inlinePolicies, (value) => pulumi.Input.encodeList<RoleInlinePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedPolicyArns': ?managedPolicyArns,
      'maxSessionDuration': ?maxSessionDuration,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'permissionsBoundary': ?permissionsBoundary,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uniqueId': ?uniqueId,
    };
  }

  factory RoleState.fromMap(Map<String, dynamic> map) {
    return RoleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assumeRolePolicy: map['assumeRolePolicy'] == null ? null : pulumi.Output.create<String>(map['assumeRolePolicy'] as String),
      createDate: map['createDate'] == null ? null : pulumi.Output.create<String>(map['createDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      forceDetachPolicies: map['forceDetachPolicies'] == null ? null : pulumi.Output.create<bool>(map['forceDetachPolicies'] as bool),
      inlinePolicies: map['inlinePolicies'] == null ? null : pulumi.Output.create<List<RoleInlinePolicy>>(pulumi.Input.decodeList<RoleInlinePolicy>(map['inlinePolicies'], (value) => RoleInlinePolicy.fromMap((value as Map).cast<String, dynamic>()))),
      managedPolicyArns: map['managedPolicyArns'] == null ? null : pulumi.Output.create<List<String>>((map['managedPolicyArns'] as List).cast<String>()),
      maxSessionDuration: map['maxSessionDuration'] == null ? null : pulumi.Output.create<int>(map['maxSessionDuration'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      permissionsBoundary: map['permissionsBoundary'] == null ? null : pulumi.Output.create<String>(map['permissionsBoundary'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
    );
  }
}

