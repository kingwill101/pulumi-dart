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
    pulumi.Output<bool>? acceptRoleSessionName,
    pulumi.Output<int>? durationSeconds,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<String>>? managedPolicyArns,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? requireInstanceProperties,
    pulumi.Output<List<String>>? roleArns,
    pulumi.Output<String>? sessionPolicy,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      acceptRoleSessionName = pulumi.Input.asOptionalInput<bool>(acceptRoleSessionName),
      durationSeconds = pulumi.Input.asOptionalInput<int>(durationSeconds),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      managedPolicyArns = pulumi.Input.asOptionalInput<List<String>>(managedPolicyArns),
      name = pulumi.Input.asOptionalInput<String>(name),
      requireInstanceProperties = pulumi.Input.asOptionalInput<bool>(requireInstanceProperties),
      roleArns = pulumi.Input.asOptionalInput<List<String>>(roleArns),
      sessionPolicy = pulumi.Input.asOptionalInput<String>(sessionPolicy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptRoleSessionName': ?acceptRoleSessionName,
      'durationSeconds': ?durationSeconds,
      'enabled': ?enabled,
      'managedPolicyArns': ?managedPolicyArns,
      'name': ?name,
      'requireInstanceProperties': ?requireInstanceProperties,
      'roleArns': ?roleArns,
      'sessionPolicy': ?sessionPolicy,
      'tags': ?tags,
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      acceptRoleSessionName: map['acceptRoleSessionName'] == null ? null : pulumi.Output.create<bool>(map['acceptRoleSessionName'] as bool),
      durationSeconds: map['durationSeconds'] == null ? null : pulumi.Output.create<int>(map['durationSeconds'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      managedPolicyArns: map['managedPolicyArns'] == null ? null : pulumi.Output.create<List<String>>((map['managedPolicyArns'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      requireInstanceProperties: map['requireInstanceProperties'] == null ? null : pulumi.Output.create<bool>(map['requireInstanceProperties'] as bool),
      roleArns: map['roleArns'] == null ? null : pulumi.Output.create<List<String>>((map['roleArns'] as List).cast<String>()),
      sessionPolicy: map['sessionPolicy'] == null ? null : pulumi.Output.create<String>(map['sessionPolicy'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

