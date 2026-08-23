// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_authentication_mode.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// Access permissions string used for this user.
  final String accessString;
  /// ARN of the user.
  final String arn;
  /// Denotes the user's authentication properties.
  final List<GetUserAuthenticationMode> authenticationModes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Minimum engine version supported for the user.
  final String minimumEngineVersion;
  final String region;
  /// Map of tags assigned to the user.
  final Map<String, String> tags;
  final String userName;

  /// Creates a new [GetUserResult].
  /// [accessString] Access permissions string used for this user.
  /// [arn] ARN of the user.
  /// [authenticationModes] Denotes the user's authentication properties.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [minimumEngineVersion] Minimum engine version supported for the user.
  /// [region] Required.
  /// [tags] Map of tags assigned to the user.
  /// [userName] Required.
  const GetUserResult({
    required this.accessString,
    required this.arn,
    required this.authenticationModes,
    required this.id,
    required this.minimumEngineVersion,
    required this.region,
    required this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessString': accessString,
      'arn': arn,
      'authenticationModes': pulumi.Input.encodeList<GetUserAuthenticationMode, Map<String, dynamic>>(authenticationModes, (value) => value.toMap()),
      'id': id,
      'minimumEngineVersion': minimumEngineVersion,
      'region': region,
      'tags': tags,
      'userName': userName,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      accessString: map['accessString'] as String,
      arn: map['arn'] as String,
      authenticationModes: pulumi.Input.decodeList<GetUserAuthenticationMode>(map['authenticationModes']!, (value) => GetUserAuthenticationMode.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      minimumEngineVersion: map['minimumEngineVersion'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] as String,
    );
  }
}
