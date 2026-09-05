// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_authentication_mode.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// String for what access a user possesses within the associated ElastiCache replication groups or clusters.
  final String? accessString;
  final List<GetUserAuthenticationMode>? authenticationModes;
  final String? engine;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? noPasswordRequired;
  final List<String>? passwords;
  final String? region;
  /// Identifier for the user.
  final String? userId;
  /// User name of the user.
  final String? userName;

  /// Creates a new [GetUserResult].
  /// [accessString] String for what access a user possesses within the associated ElastiCache replication groups or clusters.
  /// [authenticationModes] Optional.
  /// [engine] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [noPasswordRequired] Optional.
  /// [passwords] Optional.
  /// [region] Optional.
  /// [userId] Identifier for the user.
  /// [userName] User name of the user.
  const GetUserResult({
    this.accessString,
    this.authenticationModes,
    this.engine,
    this.id,
    this.noPasswordRequired,
    this.passwords,
    this.region,
    this.userId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': ?accessString,
      'authenticationModes': ?(() { final guardedValue = authenticationModes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserAuthenticationMode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'engine': ?engine,
      'id': ?id,
      'noPasswordRequired': ?noPasswordRequired,
      'passwords': ?passwords,
      'region': ?region,
      'userId': ?userId,
      'userName': ?userName,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      accessString: (() { final guardedValue = map['accessString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authenticationModes: (() { final guardedValue = map['authenticationModes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserAuthenticationMode>(guardedValue, (value) => GetUserAuthenticationMode.fromMap((value as Map).cast<String, dynamic>())); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noPasswordRequired: (() { final guardedValue = map['noPasswordRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      passwords: (() { final guardedValue = map['passwords']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
