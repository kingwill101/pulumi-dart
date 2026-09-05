// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_authentication_mode.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// Access permissions string used for this user.
  final String? accessString;
  /// ARN of the user.
  final String? arn;
  /// Denotes the user's authentication properties.
  final List<GetUserAuthenticationMode>? authenticationModes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Minimum engine version supported for the user.
  final String? minimumEngineVersion;
  final String? region;
  /// Map of tags assigned to the user.
  final Map<String, String>? tags;
  final String? userName;

  /// Creates a new [GetUserResult].
  /// [accessString] Access permissions string used for this user.
  /// [arn] ARN of the user.
  /// [authenticationModes] Denotes the user's authentication properties.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumEngineVersion] Minimum engine version supported for the user.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the user.
  /// [userName] Optional.
  const GetUserResult({
    this.accessString,
    this.arn,
    this.authenticationModes,
    this.id,
    this.minimumEngineVersion,
    this.region,
    this.tags,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': ?accessString,
      'arn': ?arn,
      'authenticationModes': ?(() { final guardedValue = authenticationModes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserAuthenticationMode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'minimumEngineVersion': ?minimumEngineVersion,
      'region': ?region,
      'tags': ?tags,
      'userName': ?userName,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      accessString: (() { final guardedValue = map['accessString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authenticationModes: (() { final guardedValue = map['authenticationModes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserAuthenticationMode>(guardedValue, (value) => GetUserAuthenticationMode.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumEngineVersion: (() { final guardedValue = map['minimumEngineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
