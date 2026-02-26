// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_user_authentication_mode/get_user_authentication_mode.dart';

/// Result data returned by getUser.
class GetUserResult2 {
  /// String for what access a user possesses within the associated ElastiCache replication groups or clusters.
  final String? accessString;
  final List<GetUserAuthenticationMode>? authenticationModes;
  final String? engine;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? noPasswordRequired;
  final List<String>? passwords;
  final String region;

  /// Identifier for the user.
  final String userId;

  /// User name of the user.
  final String? userName;

  GetUserResult2({
    this.accessString,
    this.authenticationModes,
    this.engine,
    required this.id,
    this.noPasswordRequired,
    this.passwords,
    required this.region,
    required this.userId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessStringValue = accessString;
    if (accessStringValue != null) {
      map['accessString'] = accessStringValue;
    }
    final authenticationModesValue = authenticationModes;
    if (authenticationModesValue != null) {
      map['authenticationModes'] =
          Input.encodeList<GetUserAuthenticationMode, Map<String, dynamic>>(
              authenticationModesValue, (value) => value.toMap());
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    map['id'] = id;
    final noPasswordRequiredValue = noPasswordRequired;
    if (noPasswordRequiredValue != null) {
      map['noPasswordRequired'] = noPasswordRequiredValue;
    }
    final passwordsValue = passwords;
    if (passwordsValue != null) {
      map['passwords'] = passwordsValue;
    }
    map['region'] = region;
    map['userId'] = userId;
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    return map;
  }

  factory GetUserResult2.fromMap(Map<String, dynamic> map) {
    return GetUserResult2(
      accessString:
          map['accessString'] == null ? null : map['accessString'] as String,
      authenticationModes: map['authenticationModes'] == null
          ? null
          : Input.decodeList<GetUserAuthenticationMode>(
              map['authenticationModes'],
              (value) => GetUserAuthenticationMode.fromMap(
                  (value as Map).cast<String, dynamic>())),
      engine: map['engine'] == null ? null : map['engine'] as String,
      id: map['id'] as String,
      noPasswordRequired: map['noPasswordRequired'] == null
          ? null
          : map['noPasswordRequired'] as bool,
      passwords: map['passwords'] == null
          ? null
          : (map['passwords'] as List).cast<String>(),
      region: map['region'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}
