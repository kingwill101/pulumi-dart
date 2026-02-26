// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_user_authentication_mode/get_user_authentication_mode2.dart';

/// Result data returned by getUser.
class GetUserResult5 {
  /// Access permissions string used for this user.
  final String accessString;

  /// ARN of the user.
  final String arn;

  /// Denotes the user's authentication properties.
  final List<GetUserAuthenticationMode2> authenticationModes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Minimum engine version supported for the user.
  final String minimumEngineVersion;
  final String region;

  /// Map of tags assigned to the user.
  final Map<String, String> tags;
  final String userName;

  GetUserResult5({
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
    map['authenticationModes'] =
        Input.encodeList<GetUserAuthenticationMode2, Map<String, dynamic>>(
            authenticationModes, (value) => value.toMap());
    map['id'] = id;
    map['minimumEngineVersion'] = minimumEngineVersion;
    map['region'] = region;
    map['tags'] = tags;
    map['userName'] = userName;
    return map;
  }

  factory GetUserResult5.fromMap(Map<String, dynamic> map) {
    return GetUserResult5(
      accessString: map['accessString'] as String,
      arn: map['arn'] as String,
      authenticationModes: Input.decodeList<GetUserAuthenticationMode2>(
          map['authenticationModes'],
          (value) => GetUserAuthenticationMode2.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      minimumEngineVersion: map['minimumEngineVersion'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] as String,
    );
  }
}
