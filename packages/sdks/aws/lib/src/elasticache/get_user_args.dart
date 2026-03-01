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
    pulumi.Output<String>? accessString,
    pulumi.Output<List<GetUserAuthenticationMode>>? authenticationModes,
    pulumi.Output<String>? engine,
    pulumi.Output<bool>? noPasswordRequired,
    pulumi.Output<List<String>>? passwords,
    pulumi.Output<String>? region,
    required pulumi.Output<String> userId,
    pulumi.Output<String>? userName,
  }) :
      accessString = pulumi.Input.asOptionalInput<String>(accessString),
      authenticationModes = pulumi.Input.asOptionalInput<List<GetUserAuthenticationMode>>(authenticationModes),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      noPasswordRequired = pulumi.Input.asOptionalInput<bool>(noPasswordRequired),
      passwords = pulumi.Input.asOptionalInput<List<String>>(passwords),
      region = pulumi.Input.asOptionalInput<String>(region),
      userId = pulumi.Input.asInput<String>(userId),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      accessString: map['accessString'] == null ? null : pulumi.Output.create<String>(map['accessString'] as String),
      authenticationModes: map['authenticationModes'] == null ? null : pulumi.Output.create<List<GetUserAuthenticationMode>>(pulumi.Input.decodeList<GetUserAuthenticationMode>(map['authenticationModes'], (value) => GetUserAuthenticationMode.fromMap((value as Map).cast<String, dynamic>()))),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      noPasswordRequired: map['noPasswordRequired'] == null ? null : pulumi.Output.create<bool>(map['noPasswordRequired'] as bool),
      passwords: map['passwords'] == null ? null : pulumi.Output.create<List<String>>((map['passwords'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

