// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_user_authentication_mode/get_user_authentication_mode.dart';

/// Arguments for getUser.
class GetUserElasticacheArgs {
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

  GetUserElasticacheArgs({
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
      map['authenticationModes'] = pulumi.Input.mapOptionalInputValue<
              List<GetUserAuthenticationMode>, List<Map<String, dynamic>>>(
          authenticationModesValue,
          (value) => pulumi.Input.encodeList<GetUserAuthenticationMode,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory GetUserElasticacheArgs.fromMap(Map<String, dynamic> map) {
    return GetUserElasticacheArgs(
      accessString: pulumi.Input.asOptionalInput<String>(map['accessString']),
      authenticationModes:
          pulumi.Input.asOptionalInput<List<GetUserAuthenticationMode>>(
              map['authenticationModes']),
      engine: pulumi.Input.asOptionalInput<String>(map['engine']),
      noPasswordRequired:
          pulumi.Input.asOptionalInput<bool>(map['noPasswordRequired']),
      passwords: pulumi.Input.asOptionalInput<List<String>>(map['passwords']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userId: pulumi.Input.asInput<String>(map['userId']),
      userName: pulumi.Input.asOptionalInput<String>(map['userName']),
    );
  }
}
