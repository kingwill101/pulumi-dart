// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_user_authentication_mode/get_user_authentication_mode.dart';

/// Arguments for getUser.
class GetUserArgs2 {
  /// String for what access a user possesses within the associated ElastiCache replication groups or clusters.
  final Input<String>? accessString;
  final Input<List<GetUserAuthenticationMode>>? authenticationModes;
  final Input<String>? engine;
  final Input<bool>? noPasswordRequired;
  final Input<List<String>>? passwords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier for the user.
  final Input<String> userId;

  /// User name of the user.
  final Input<String>? userName;

  GetUserArgs2({
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
    final map = <String, dynamic>{};
    final accessStringValue = accessString;
    if (accessStringValue != null) {
      map['accessString'] = accessStringValue;
    }
    final authenticationModesValue = authenticationModes;
    if (authenticationModesValue != null) {
      map['authenticationModes'] = Input.mapOptionalInputValue<
              List<GetUserAuthenticationMode>, List<Map<String, dynamic>>>(
          authenticationModesValue,
          (value) =>
              Input.encodeList<GetUserAuthenticationMode, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
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
    map['userId'] = userId;
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    return map;
  }

  factory GetUserArgs2.fromMap(Map<String, dynamic> map) {
    return GetUserArgs2(
      accessString: Input.asOptionalInput<String>(map['accessString']),
      authenticationModes:
          Input.asOptionalInput<List<GetUserAuthenticationMode>>(
              map['authenticationModes']),
      engine: Input.asOptionalInput<String>(map['engine']),
      noPasswordRequired:
          Input.asOptionalInput<bool>(map['noPasswordRequired']),
      passwords: Input.asOptionalInput<List<String>>(map['passwords']),
      region: Input.asOptionalInput<String>(map['region']),
      userId: Input.asInput<String>(map['userId']),
      userName: Input.asOptionalInput<String>(map['userName']),
    );
  }
}
