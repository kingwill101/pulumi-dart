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
    required this.accessString,
    this.authenticationMode,
    required this.engine,
    this.noPasswordRequired,
    this.passwords,
    this.region,
    this.tags,
    required this.userId,
    required this.userName,
  });

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
      accessString: (map['accessString'] as String).input(),
      authenticationMode: map['authenticationMode'] == null ? null : (UserAuthenticationMode.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>())).input(),
      engine: (map['engine'] as String).input(),
      noPasswordRequired: map['noPasswordRequired'] == null ? null : (map['noPasswordRequired'] as bool).input(),
      passwords: map['passwords'] == null ? null : ((map['passwords'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userId: (map['userId'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

