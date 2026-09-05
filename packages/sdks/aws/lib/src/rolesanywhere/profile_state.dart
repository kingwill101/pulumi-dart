// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Profile resources.
class ProfileState {
  /// Whether or not a custom role session name is accepted.
  final pulumi.Input<bool?>? acceptRoleSessionName;
  /// ARN of the Profile
  final pulumi.Input<String?>? arn;
  /// The number of seconds the vended session credentials are valid for. Defaults to 3600.
  final pulumi.Input<int?>? durationSeconds;
  /// Whether or not the Profile is enabled.
  final pulumi.Input<bool?>? enabled;
  /// A list of managed policy ARNs that apply to the vended session credentials.
  final pulumi.Input<List<String>?>? managedPolicyArns;
  /// The name of the Profile.
  final pulumi.Input<String?>? name;
  /// Specifies whether instance properties are required in [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests with this profile.
  final pulumi.Input<bool?>? requireInstanceProperties;
  /// A list of IAM roles that this profile can assume
  final pulumi.Input<List<String>?>? roleArns;
  /// A session policy that applies to the trust boundary of the vended session credentials.
  final pulumi.Input<String?>? sessionPolicy;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ProfileState].
  /// [acceptRoleSessionName] Whether or not a custom role session name is accepted.
  /// [arn] ARN of the Profile
  /// [durationSeconds] The number of seconds the vended session credentials are valid for. Defaults to 3600.
  /// [enabled] Whether or not the Profile is enabled.
  /// [managedPolicyArns] A list of managed policy ARNs that apply to the vended session credentials.
  /// [name] The name of the Profile.
  /// [requireInstanceProperties] Specifies whether instance properties are required in [CreateSession](https://docs.aws.amazon.com/rolesanywhere/latest/APIReference/API_CreateSession.html) requests with this profile.
  /// [roleArns] A list of IAM roles that this profile can assume
  /// [sessionPolicy] A session policy that applies to the trust boundary of the vended session credentials.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ProfileState({
    this.acceptRoleSessionName,
    this.arn,
    this.durationSeconds,
    this.enabled,
    this.managedPolicyArns,
    this.name,
    this.requireInstanceProperties,
    this.roleArns,
    this.sessionPolicy,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptRoleSessionName': ?acceptRoleSessionName,
      'arn': ?arn,
      'durationSeconds': ?durationSeconds,
      'enabled': ?enabled,
      'managedPolicyArns': ?managedPolicyArns,
      'name': ?name,
      'requireInstanceProperties': ?requireInstanceProperties,
      'roleArns': ?roleArns,
      'sessionPolicy': ?sessionPolicy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ProfileState.fromMap(Map<String, dynamic> map) {
    return ProfileState(
      acceptRoleSessionName: (() { final guardedValue = map['acceptRoleSessionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedPolicyArns: (() { final guardedValue = map['managedPolicyArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireInstanceProperties: (() { final guardedValue = map['requireInstanceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roleArns: (() { final guardedValue = map['roleArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sessionPolicy: (() { final guardedValue = map['sessionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
