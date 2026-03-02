// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_authentication_mode.dart';

/// {@template pulumi_elasticache_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_elasticache_get_user_get_user_args_doc}
class GetUserArgs {
  /// String for what access a user possesses within the associated ElastiCache replication groups or clusters.
  final pulumi.Input<String>? accessString;
  final pulumi.Input<List<GetUserAuthenticationMode>>? authenticationModes;
  final pulumi.Input<String>? engine;
  final pulumi.Input<bool>? noPasswordRequired;
  final pulumi.Input<List<String>>? passwords;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier for the user.
  final pulumi.Input<String> userId;
  /// User name of the user.
  final pulumi.Input<String>? userName;

  /// Creates a new [GetUserArgs].
  /// [accessString] String for what access a user possesses within the associated ElastiCache replication groups or clusters.
  /// [authenticationModes] Optional.
  /// [engine] Optional.
  /// [noPasswordRequired] Optional.
  /// [passwords] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userId] Identifier for the user.
  /// [userName] User name of the user.
  GetUserArgs({
    this.accessString,
    this.authenticationModes,
    this.engine,
    this.noPasswordRequired,
    this.passwords,
    this.region,
    required this.userId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': ?accessString,
      'authenticationModes': ?pulumi.Input.mapOptionalInputValue<List<GetUserAuthenticationMode>, List<Map<String, dynamic>>>(authenticationModes, (value) => pulumi.Input.encodeList<GetUserAuthenticationMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engine': ?engine,
      'noPasswordRequired': ?noPasswordRequired,
      'passwords': ?passwords,
      'region': ?region,
      'userId': userId,
      'userName': ?userName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      accessString: map['accessString'] == null ? null : (map['accessString'] as String).input(),
      authenticationModes: map['authenticationModes'] == null ? null : (pulumi.Input.decodeList<GetUserAuthenticationMode>(map['authenticationModes'], (value) => GetUserAuthenticationMode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      noPasswordRequired: map['noPasswordRequired'] == null ? null : (map['noPasswordRequired'] as bool).input(),
      passwords: map['passwords'] == null ? null : ((map['passwords'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      userId: (map['userId'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

