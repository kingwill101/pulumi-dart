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
  const GetUserArgs({
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
      accessString: (() { final guardedValue = map['accessString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationModes: (() { final guardedValue = map['authenticationModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserAuthenticationMode>(guardedValue, (value) => GetUserAuthenticationMode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noPasswordRequired: (() { final guardedValue = map['noPasswordRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      passwords: (() { final guardedValue = map['passwords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
