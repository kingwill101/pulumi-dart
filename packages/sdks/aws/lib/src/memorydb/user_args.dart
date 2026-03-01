// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_authentication_mode.dart';

/// {@template pulumi_memorydb_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_memorydb_user_user_args_doc}
class UserArgs {
  /// Access permissions string used for this user.
  final pulumi.Input<String> accessString;
  /// Denotes the user's authentication properties. Detailed below.
  final pulumi.Input<UserAuthenticationMode> authenticationMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the MemoryDB user. Up to 40 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userName;

  /// Creates a new [UserArgs].
  /// [accessString] Access permissions string used for this user.
  /// [authenticationMode] Denotes the user's authentication properties. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userName] Name of the MemoryDB user. Up to 40 characters.
  UserArgs({
    required pulumi.Output<String> accessString,
    required pulumi.Output<UserAuthenticationMode> authenticationMode,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userName,
  }) :
      accessString = pulumi.Input.asInput<String>(accessString),
      authenticationMode = pulumi.Input.asInput<UserAuthenticationMode>(authenticationMode),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': accessString,
      'authenticationMode': pulumi.Input.mapInputValue<UserAuthenticationMode, Map<String, dynamic>>(authenticationMode, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      accessString: pulumi.Output.create<String>(map['accessString'] as String),
      authenticationMode: pulumi.Output.create<UserAuthenticationMode>(UserAuthenticationMode.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

