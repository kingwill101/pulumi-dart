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
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only password for this user. This argument is not stored in state. Conflicts with `passwords` and `authenticationMode`. See Write-Only Arguments for more information. Requires Terraform 1.11+.
  final pulumi.Input<String>? passwordsWo;
  /// Version number for `passwordsWo`. Increment this value to trigger a password update. Required when using `passwordsWo`.
  final pulumi.Input<int>? passwordsWoVersion;
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
  /// [passwordsWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordsWoVersion] Version number for `passwordsWo`. Increment this value to trigger a password update. Required when using `passwordsWo`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A list of tags to be added to this resource. A tag is a key-value pair.
  /// [userId] The ID of the user.
  /// [userName] The username of the user.
  const UserArgs({
    required this.accessString,
    this.authenticationMode,
    required this.engine,
    this.noPasswordRequired,
    this.passwords,
    this.passwordsWo,
    this.passwordsWoVersion,
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
      'passwordsWo': ?passwordsWo,
      'passwordsWoVersion': ?passwordsWoVersion,
      'region': ?region,
      'tags': ?tags,
      'userId': userId,
      'userName': userName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      accessString: pulumi.Input.fromValue(map['accessString'] as String),
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAuthenticationMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      noPasswordRequired: (() { final guardedValue = map['noPasswordRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      passwords: (() { final guardedValue = map['passwords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      passwordsWo: (() { final guardedValue = map['passwordsWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordsWoVersion: (() { final guardedValue = map['passwordsWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
