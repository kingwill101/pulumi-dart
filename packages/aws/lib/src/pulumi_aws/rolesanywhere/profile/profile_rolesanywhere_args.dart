// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Profile.
class ProfileRolesanywhereArgs {
  /// Whether or not a custom role session name is accepted.
  final pulumi.Input<bool>? acceptRoleSessionName;

  /// The number of seconds the vended session credentials are valid for. Defaults to 3600.
  final pulumi.Input<int>? durationSeconds;

  /// Whether or not the Profile is enabled.
  final pulumi.Input<bool>? enabled;

  /// A list of managed policy ARNs that apply to the vended session credentials.
  final pulumi.Input<List<String>>? managedPolicyArns;

  /// The name of the Profile.
  final pulumi.Input<String>? name;

  /// Specifies whether instance properties are required in [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests with this profile.
  final pulumi.Input<bool>? requireInstanceProperties;

  /// A list of IAM roles that this profile can assume
  final pulumi.Input<List<String>>? roleArns;

  /// A session policy that applies to the trust boundary of the vended session credentials.
  final pulumi.Input<String>? sessionPolicy;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ProfileRolesanywhereArgs({
    this.acceptRoleSessionName,
    this.durationSeconds,
    this.enabled,
    this.managedPolicyArns,
    this.name,
    this.requireInstanceProperties,
    this.roleArns,
    this.sessionPolicy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptRoleSessionNameValue = acceptRoleSessionName;
    if (acceptRoleSessionNameValue != null) {
      map['acceptRoleSessionName'] = acceptRoleSessionNameValue;
    }
    final durationSecondsValue = durationSeconds;
    if (durationSecondsValue != null) {
      map['durationSeconds'] = durationSecondsValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final managedPolicyArnsValue = managedPolicyArns;
    if (managedPolicyArnsValue != null) {
      map['managedPolicyArns'] = managedPolicyArnsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final requireInstancePropertiesValue = requireInstanceProperties;
    if (requireInstancePropertiesValue != null) {
      map['requireInstanceProperties'] = requireInstancePropertiesValue;
    }
    final roleArnsValue = roleArns;
    if (roleArnsValue != null) {
      map['roleArns'] = roleArnsValue;
    }
    final sessionPolicyValue = sessionPolicy;
    if (sessionPolicyValue != null) {
      map['sessionPolicy'] = sessionPolicyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProfileRolesanywhereArgs.fromMap(Map<String, dynamic> map) {
    return ProfileRolesanywhereArgs(
      acceptRoleSessionName:
          pulumi.Input.asOptionalInput<bool>(map['acceptRoleSessionName']),
      durationSeconds:
          pulumi.Input.asOptionalInput<int>(map['durationSeconds']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      managedPolicyArns:
          pulumi.Input.asOptionalInput<List<String>>(map['managedPolicyArns']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      requireInstanceProperties:
          pulumi.Input.asOptionalInput<bool>(map['requireInstanceProperties']),
      roleArns: pulumi.Input.asOptionalInput<List<String>>(map['roleArns']),
      sessionPolicy: pulumi.Input.asOptionalInput<String>(map['sessionPolicy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
