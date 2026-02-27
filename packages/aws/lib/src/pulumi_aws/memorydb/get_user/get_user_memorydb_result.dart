// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_user_authentication_mode/get_user_authentication_mode_memorydb.dart';

/// Result data returned by getUser.
class GetUserMemorydbResult {
  /// Access permissions string used for this user.
  final String accessString;

  /// ARN of the user.
  final String arn;

  /// Denotes the user's authentication properties.
  final List<GetUserAuthenticationModeMemorydb> authenticationModes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Minimum engine version supported for the user.
  final String minimumEngineVersion;
  final String region;

  /// Map of tags assigned to the user.
  final Map<String, String> tags;
  final String userName;

  GetUserMemorydbResult({
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
    final map = <String, dynamic>{};
    map['accessString'] = accessString;
    map['arn'] = arn;
    map['authenticationModes'] = pulumi.Input.encodeList<
        GetUserAuthenticationModeMemorydb,
        Map<String, dynamic>>(authenticationModes, (value) => value.toMap());
    map['id'] = id;
    map['minimumEngineVersion'] = minimumEngineVersion;
    map['region'] = region;
    map['tags'] = tags;
    map['userName'] = userName;
    return map;
  }

  factory GetUserMemorydbResult.fromMap(Map<String, dynamic> map) {
    return GetUserMemorydbResult(
      accessString: map['accessString'] as String,
      arn: map['arn'] as String,
      authenticationModes:
          pulumi.Input.decodeList<GetUserAuthenticationModeMemorydb>(
              map['authenticationModes'],
              (value) => GetUserAuthenticationModeMemorydb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      minimumEngineVersion: map['minimumEngineVersion'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] as String,
    );
  }
}
