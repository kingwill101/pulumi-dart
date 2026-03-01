// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_authentication_mode.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  final pulumi.Input<String>? accessString;
  /// The ARN of the created ElastiCache User.
  final pulumi.Input<String>? arn;
  /// Denotes the user's authentication properties. Detailed below.
  final pulumi.Input<UserAuthenticationMode>? authenticationMode;
  /// The current supported values are `redis`, `valkey` (case insensitive).
  final pulumi.Input<String>? engine;
  /// Indicates a password is not required for this user.
  final pulumi.Input<bool>? noPasswordRequired;
  /// Passwords used for this user. You can create up to two passwords for each user.
  final pulumi.Input<List<String>>? passwords;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of tags to be added to this resource. A tag is a key-value pair.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the user.
  final pulumi.Input<String>? userId;
  /// The username of the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userName;

  /// Creates a new [UserState].
  /// [accessString] Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  /// [arn] The ARN of the created ElastiCache User.
  /// [authenticationMode] Denotes the user's authentication properties. Detailed below.
  /// [engine] The current supported values are `redis`, `valkey` (case insensitive).
  /// [noPasswordRequired] Indicates a password is not required for this user.
  /// [passwords] Passwords used for this user. You can create up to two passwords for each user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A list of tags to be added to this resource. A tag is a key-value pair.
  /// [tagsAll] Optional.
  /// [userId] The ID of the user.
  /// [userName] The username of the user.
  UserState({
    pulumi.Output<String>? accessString,
    pulumi.Output<String>? arn,
    pulumi.Output<UserAuthenticationMode>? authenticationMode,
    pulumi.Output<String>? engine,
    pulumi.Output<bool>? noPasswordRequired,
    pulumi.Output<List<String>>? passwords,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? userName,
  }) :
      accessString = pulumi.Input.asOptionalInput<String>(accessString),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authenticationMode = pulumi.Input.asOptionalInput<UserAuthenticationMode>(authenticationMode),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      noPasswordRequired = pulumi.Input.asOptionalInput<bool>(noPasswordRequired),
      passwords = pulumi.Input.asOptionalInput<List<String>>(passwords),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': ?accessString,
      'arn': ?arn,
      'authenticationMode': ?pulumi.Input.mapOptionalInputValue<UserAuthenticationMode, Map<String, dynamic>>(authenticationMode, (value) => value.toMap()),
      'engine': ?engine,
      'noPasswordRequired': ?noPasswordRequired,
      'passwords': ?passwords,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userId': ?userId,
      'userName': ?userName,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      accessString: map['accessString'] == null ? null : pulumi.Output.create<String>(map['accessString'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<UserAuthenticationMode>(UserAuthenticationMode.fromMap((map['authenticationMode'] as Map).cast<String, dynamic>())),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      noPasswordRequired: map['noPasswordRequired'] == null ? null : pulumi.Output.create<bool>(map['noPasswordRequired'] as bool),
      passwords: map['passwords'] == null ? null : pulumi.Output.create<List<String>>((map['passwords'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

