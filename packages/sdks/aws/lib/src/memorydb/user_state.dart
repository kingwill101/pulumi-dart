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
    this.accessString,
    this.arn,
    this.authenticationMode,
    this.minimumEngineVersion,
    this.region,
    this.tags,
    this.tagsAll,
    this.userName,
  });

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
      accessString: map['accessString'] == null ? null : ((map['accessString'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      authenticationMode: map['authenticationMode'] == null ? null : ((UserAuthenticationMode.fromMap((map['authenticationMode']! as Map).cast<String, dynamic>())).input()).input(),
      minimumEngineVersion: map['minimumEngineVersion'] == null ? null : ((map['minimumEngineVersion'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      userName: map['userName'] == null ? null : ((map['userName'] as String).input()).input(),
    );
  }
}

