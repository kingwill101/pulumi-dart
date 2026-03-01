// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_authentication_mode.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Access permissions string used for this user.
  final pulumi.Input<String>? accessString;
  /// ARN of the user.
  final pulumi.Input<String>? arn;
  /// Denotes the user's authentication properties. Detailed below.
  final pulumi.Input<UserAuthenticationMode>? authenticationMode;
  /// Minimum engine version supported for the user.
  final pulumi.Input<String>? minimumEngineVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Name of the MemoryDB user. Up to 40 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userName;

  /// Creates a new [UserState].
  /// [accessString] Access permissions string used for this user.
  /// [arn] ARN of the user.
  /// [authenticationMode] Denotes the user's authentication properties. Detailed below.
  /// [minimumEngineVersion] Minimum engine version supported for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userName] Name of the MemoryDB user. Up to 40 characters.
  UserState({
    pulumi.Output<String>? accessString,
    pulumi.Output<String>? arn,
    pulumi.Output<UserAuthenticationMode>? authenticationMode,
    pulumi.Output<String>? minimumEngineVersion,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userName,
  }) :
      accessString = pulumi.Input.asOptionalInput<String>(accessString),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authenticationMode = pulumi.Input.asOptionalInput<UserAuthenticationMode>(authenticationMode),
      minimumEngineVersion = pulumi.Input.asOptionalInput<String>(minimumEngineVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': ?accessString,
      'arn': ?arn,
      'authenticationMode': ?pulumi.Input.mapOptionalInputValue<UserAuthenticationMode, Map<String, dynamic>>(authenticationMode, (value) => value.toMap()),
      'minimumEngineVersion': ?minimumEngineVersion,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userName': ?userName,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      accessString: map['accessString'] == null ? null : pulumi.Output.create<String>(map['accessString'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<UserAuthenticationMode>(UserAuthenticationMode.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>())),
      minimumEngineVersion: map['minimumEngineVersion'] == null ? null : pulumi.Output.create<String>(map['minimumEngineVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

