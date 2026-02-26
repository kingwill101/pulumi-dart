// ignore_for_file: unused_element, unnecessary_cast

/// The set of arguments for constructing a Role resource and Policy attachments.
class RoleWithPolicy {
  /// Description of the role.
  final String? description;

  /// Whether to force detaching any policies the role has before destroying it. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? forceDetachPolicies;

  /// Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., <span pulumi-lang-nodejs="`inlinePolicy " pulumi-lang-dotnet="`InlinePolicy " pulumi-lang-go="`inlinePolicy " pulumi-lang-python="`inline_policy " pulumi-lang-yaml="`inlinePolicy " pulumi-lang-java="`inlinePolicy ">`inline_policy </span>{}`) will cause Pulumi to remove _all_ inline policies added out of band on <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span>.
  final List<Map<String, dynamic>>? inlinePolicies;

  /// Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., <span pulumi-lang-nodejs="`managedPolicyArns " pulumi-lang-dotnet="`ManagedPolicyArns " pulumi-lang-go="`managedPolicyArns " pulumi-lang-python="`managed_policy_arns " pulumi-lang-yaml="`managedPolicyArns " pulumi-lang-java="`managedPolicyArns ">`managed_policy_arns </span>= []`) will cause Pulumi to remove _all_ managed policy attachments.
  final List<String>? managedPolicyArns;

  /// Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  final int? maxSessionDuration;

  /// Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final String? name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final String? namePrefix;

  /// Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  final String? path;

  /// ARN of the policy that is used to set the permissions boundary for the role.
  final String? permissionsBoundary;

  /// ARNs of the policies to attach to the created role.
  final List<String>? policyArns;

  /// Key-value mapping of tags for the IAM role. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  RoleWithPolicy({
    this.description,
    this.forceDetachPolicies,
    this.inlinePolicies,
    this.managedPolicyArns,
    this.maxSessionDuration,
    this.name,
    this.namePrefix,
    this.path,
    this.permissionsBoundary,
    this.policyArns,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final forceDetachPoliciesValue = forceDetachPolicies;
    if (forceDetachPoliciesValue != null) {
      map['forceDetachPolicies'] = forceDetachPoliciesValue;
    }
    final inlinePoliciesValue = inlinePolicies;
    if (inlinePoliciesValue != null) {
      map['inlinePolicies'] = inlinePoliciesValue;
    }
    final managedPolicyArnsValue = managedPolicyArns;
    if (managedPolicyArnsValue != null) {
      map['managedPolicyArns'] = managedPolicyArnsValue;
    }
    final maxSessionDurationValue = maxSessionDuration;
    if (maxSessionDurationValue != null) {
      map['maxSessionDuration'] = maxSessionDurationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final permissionsBoundaryValue = permissionsBoundary;
    if (permissionsBoundaryValue != null) {
      map['permissionsBoundary'] = permissionsBoundaryValue;
    }
    final policyArnsValue = policyArns;
    if (policyArnsValue != null) {
      map['policyArns'] = policyArnsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RoleWithPolicy.fromMap(Map<String, dynamic> map) {
    return RoleWithPolicy(
      description:
          map['description'] == null ? null : map['description'] as String,
      forceDetachPolicies: map['forceDetachPolicies'] == null
          ? null
          : map['forceDetachPolicies'] as bool,
      inlinePolicies: map['inlinePolicies'] == null
          ? null
          : (map['inlinePolicies'] as List).cast<Map<String, dynamic>>(),
      managedPolicyArns: map['managedPolicyArns'] == null
          ? null
          : (map['managedPolicyArns'] as List).cast<String>(),
      maxSessionDuration: map['maxSessionDuration'] == null
          ? null
          : map['maxSessionDuration'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      permissionsBoundary: map['permissionsBoundary'] == null
          ? null
          : map['permissionsBoundary'] as String,
      policyArns: map['policyArns'] == null
          ? null
          : (map['policyArns'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
