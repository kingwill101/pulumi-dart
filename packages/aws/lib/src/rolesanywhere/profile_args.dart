// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rolesanywhere_profile_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_rolesanywhere_profile_profile_args_doc}
class ProfileArgs {
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

  /// Creates a new [ProfileArgs].
  /// [acceptRoleSessionName] Whether or not a custom role session name is accepted.
  /// [durationSeconds] The number of seconds the vended session credentials are valid for. Defaults to 3600.
  /// [enabled] Whether or not the Profile is enabled.
  /// [managedPolicyArns] A list of managed policy ARNs that apply to the vended session credentials.
  /// [name] The name of the Profile.
  /// [requireInstanceProperties] Specifies whether instance properties are required in [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests with this profile.
  /// [roleArns] A list of IAM roles that this profile can assume
  /// [sessionPolicy] A session policy that applies to the trust boundary of the vended session credentials.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProfileArgs({
    bool? acceptRoleSessionName,
    int? durationSeconds,
    bool? enabled,
    List<String>? managedPolicyArns,
    String? name,
    bool? requireInstanceProperties,
    List<String>? roleArns,
    String? sessionPolicy,
    Map<String, String>? tags,
  })  : acceptRoleSessionName =
            pulumi.Input.asOptionalInput<bool>(acceptRoleSessionName),
        durationSeconds = pulumi.Input.asOptionalInput<int>(durationSeconds),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        managedPolicyArns =
            pulumi.Input.asOptionalInput<List<String>>(managedPolicyArns),
        name = pulumi.Input.asOptionalInput<String>(name),
        requireInstanceProperties =
            pulumi.Input.asOptionalInput<bool>(requireInstanceProperties),
        roleArns = pulumi.Input.asOptionalInput<List<String>>(roleArns),
        sessionPolicy = pulumi.Input.asOptionalInput<String>(sessionPolicy),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      acceptRoleSessionName: map['acceptRoleSessionName'] == null
          ? null
          : map['acceptRoleSessionName'] as bool,
      durationSeconds:
          map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      managedPolicyArns: map['managedPolicyArns'] == null
          ? null
          : (map['managedPolicyArns'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      requireInstanceProperties: map['requireInstanceProperties'] == null
          ? null
          : map['requireInstanceProperties'] as bool,
      roleArns: map['roleArns'] == null
          ? null
          : (map['roleArns'] as List).cast<String>(),
      sessionPolicy:
          map['sessionPolicy'] == null ? null : map['sessionPolicy'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
