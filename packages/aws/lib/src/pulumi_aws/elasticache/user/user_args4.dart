// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_authentication_mode/user_authentication_mode.dart';

/// The set of arguments for User.
class UserArgs4 {
  /// Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  final Input<String> accessString;

  /// Denotes the user's authentication properties. Detailed below.
  final Input<UserAuthenticationMode>? authenticationMode;

  /// The current supported values are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span>, <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span> (case insensitive).
  final Input<String> engine;

  /// Indicates a password is not required for this user.
  final Input<bool>? noPasswordRequired;

  /// Passwords used for this user. You can create up to two passwords for each user.
  final Input<List<String>>? passwords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of tags to be added to this resource. A tag is a key-value pair.
  final Input<Map<String, String>>? tags;

  /// The ID of the user.
  final Input<String> userId;

  /// The username of the user.
  ///
  /// The following arguments are optional:
  final Input<String> userName;

  UserArgs4({
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
      map['authenticationMode'] = Input.mapOptionalInputValue<
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

  factory UserArgs4.fromMap(Map<String, dynamic> map) {
    return UserArgs4(
      accessString: Input.asInput<String>(map['accessString']),
      authenticationMode: Input.asOptionalInput<UserAuthenticationMode>(
          map['authenticationMode']),
      engine: Input.asInput<String>(map['engine']),
      noPasswordRequired:
          Input.asOptionalInput<bool>(map['noPasswordRequired']),
      passwords: Input.asOptionalInput<List<String>>(map['passwords']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userId: Input.asInput<String>(map['userId']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
