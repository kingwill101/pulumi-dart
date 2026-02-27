// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_authentication_mode/user_authentication_mode.dart';

/// The set of arguments for User.
class UserElasticacheArgs {
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

  UserElasticacheArgs({
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
    final map = <String, dynamic>{};
    map['accessString'] = accessString;
    final authenticationModeValue = authenticationMode;
    if (authenticationModeValue != null) {
      map['authenticationMode'] = pulumi.Input.mapOptionalInputValue<
              UserAuthenticationMode, Map<String, dynamic>>(
          authenticationModeValue, (value) => value.toMap());
    }
    map['engine'] = engine;
    final noPasswordRequiredValue = noPasswordRequired;
    if (noPasswordRequiredValue != null) {
      map['noPasswordRequired'] = noPasswordRequiredValue;
    }
    final passwordsValue = passwords;
    if (passwordsValue != null) {
      map['passwords'] = passwordsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userId'] = userId;
    map['userName'] = userName;
    return map;
  }

  factory UserElasticacheArgs.fromMap(Map<String, dynamic> map) {
    return UserElasticacheArgs(
      accessString: pulumi.Input.asInput<String>(map['accessString']),
      authenticationMode: pulumi.Input.asOptionalInput<UserAuthenticationMode>(
          map['authenticationMode']),
      engine: pulumi.Input.asInput<String>(map['engine']),
      noPasswordRequired:
          pulumi.Input.asOptionalInput<bool>(map['noPasswordRequired']),
      passwords: pulumi.Input.asOptionalInput<List<String>>(map['passwords']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userId: pulumi.Input.asInput<String>(map['userId']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
