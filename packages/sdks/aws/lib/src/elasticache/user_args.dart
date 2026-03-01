// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_authentication_mode.dart';

/// {@template pulumi_elasticache_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_elasticache_user_user_args_doc}
class UserArgs {
  /// Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  final pulumi.Input<String> accessString;
  /// Denotes the user's authentication properties. Detailed below.
  final pulumi.Input<UserAuthenticationMode>? authenticationMode;
  /// The current supported values are `redis`, `valkey` (case insensitive).
  final pulumi.Input<String> engine;
  /// Indicates a password is not required for this user.
  final pulumi.Input<bool>? noPasswordRequired;
  /// Passwords used for this user. You can create up to two passwords for each user.
  final pulumi.Input<List<String>>? passwords;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of tags to be added to this resource. A tag is a key-value pair.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the user.
  final pulumi.Input<String> userId;
  /// The username of the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userName;

  /// Creates a new [UserArgs].
  /// [accessString] Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  /// [authenticationMode] Denotes the user's authentication properties. Detailed below.
  /// [engine] The current supported values are `redis`, `valkey` (case insensitive).
  /// [noPasswordRequired] Indicates a password is not required for this user.
  /// [passwords] Passwords used for this user. You can create up to two passwords for each user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A list of tags to be added to this resource. A tag is a key-value pair.
  /// [userId] The ID of the user.
  /// [userName] The username of the user.
  UserArgs({
    required pulumi.Output<String> accessString,
    pulumi.Output<UserAuthenticationMode>? authenticationMode,
    required pulumi.Output<String> engine,
    pulumi.Output<bool>? noPasswordRequired,
    pulumi.Output<List<String>>? passwords,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userId,
    required pulumi.Output<String> userName,
  }) :
      accessString = pulumi.Input.asInput<String>(accessString),
      authenticationMode = pulumi.Input.asOptionalInput<UserAuthenticationMode>(authenticationMode),
      engine = pulumi.Input.asInput<String>(engine),
      noPasswordRequired = pulumi.Input.asOptionalInput<bool>(noPasswordRequired),
      passwords = pulumi.Input.asOptionalInput<List<String>>(passwords),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userId = pulumi.Input.asInput<String>(userId),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': accessString,
      'authenticationMode': ?pulumi.Input.mapOptionalInputValue<UserAuthenticationMode, Map<String, dynamic>>(authenticationMode, (value) => value.toMap()),
      'engine': engine,
      'noPasswordRequired': ?noPasswordRequired,
      'passwords': ?passwords,
      'region': ?region,
      'tags': ?tags,
      'userId': userId,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      accessString: pulumi.Output.create<String>(map['accessString'] as String),
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<UserAuthenticationMode>(UserAuthenticationMode.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>())),
      engine: pulumi.Output.create<String>(map['engine'] as String),
      noPasswordRequired: map['noPasswordRequired'] == null ? null : pulumi.Output.create<bool>(map['noPasswordRequired'] as bool),
      passwords: map['passwords'] == null ? null : pulumi.Output.create<List<String>>((map['passwords'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userId: pulumi.Output.create<String>(map['userId'] as String),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

