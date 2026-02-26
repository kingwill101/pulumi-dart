// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_key_restrictions_android_key_restrictions/api_key_restrictions_android_key_restrictions.dart';
import '../api_key_restrictions_api_target/api_key_restrictions_api_target.dart';
import '../api_key_restrictions_browser_key_restrictions/api_key_restrictions_browser_key_restrictions.dart';
import '../api_key_restrictions_ios_key_restrictions/api_key_restrictions_ios_key_restrictions.dart';
import '../api_key_restrictions_server_key_restrictions/api_key_restrictions_server_key_restrictions.dart';

class ApiKeyRestrictions {
  /// The Android apps that are allowed to use the key.
  final ApiKeyRestrictionsAndroidKeyRestrictions? androidKeyRestrictions;

  /// A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  final List<ApiKeyRestrictionsApiTarget>? apiTargets;

  /// The HTTP referrers (websites) that are allowed to use the key.
  final ApiKeyRestrictionsBrowserKeyRestrictions? browserKeyRestrictions;

  /// The iOS apps that are allowed to use the key.
  final ApiKeyRestrictionsIosKeyRestrictions? iosKeyRestrictions;

  /// The IP addresses of callers that are allowed to use the key.
  final ApiKeyRestrictionsServerKeyRestrictions? serverKeyRestrictions;

  ApiKeyRestrictions({
    this.androidKeyRestrictions,
    this.apiTargets,
    this.browserKeyRestrictions,
    this.iosKeyRestrictions,
    this.serverKeyRestrictions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final androidKeyRestrictionsValue = androidKeyRestrictions;
    if (androidKeyRestrictionsValue != null) {
      map['androidKeyRestrictions'] = androidKeyRestrictionsValue.toMap();
    }
    final apiTargetsValue = apiTargets;
    if (apiTargetsValue != null) {
      map['apiTargets'] =
          Input.encodeList<ApiKeyRestrictionsApiTarget, Map<String, dynamic>>(
              apiTargetsValue, (value) => value.toMap());
    }
    final browserKeyRestrictionsValue = browserKeyRestrictions;
    if (browserKeyRestrictionsValue != null) {
      map['browserKeyRestrictions'] = browserKeyRestrictionsValue.toMap();
    }
    final iosKeyRestrictionsValue = iosKeyRestrictions;
    if (iosKeyRestrictionsValue != null) {
      map['iosKeyRestrictions'] = iosKeyRestrictionsValue.toMap();
    }
    final serverKeyRestrictionsValue = serverKeyRestrictions;
    if (serverKeyRestrictionsValue != null) {
      map['serverKeyRestrictions'] = serverKeyRestrictionsValue.toMap();
    }
    return map;
  }

  factory ApiKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictions(
      androidKeyRestrictions: map['androidKeyRestrictions'] == null
          ? null
          : ApiKeyRestrictionsAndroidKeyRestrictions.fromMap(
              (map['androidKeyRestrictions'] as Map).cast<String, dynamic>()),
      apiTargets: map['apiTargets'] == null
          ? null
          : Input.decodeList<ApiKeyRestrictionsApiTarget>(
              map['apiTargets'],
              (value) => ApiKeyRestrictionsApiTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
      browserKeyRestrictions: map['browserKeyRestrictions'] == null
          ? null
          : ApiKeyRestrictionsBrowserKeyRestrictions.fromMap(
              (map['browserKeyRestrictions'] as Map).cast<String, dynamic>()),
      iosKeyRestrictions: map['iosKeyRestrictions'] == null
          ? null
          : ApiKeyRestrictionsIosKeyRestrictions.fromMap(
              (map['iosKeyRestrictions'] as Map).cast<String, dynamic>()),
      serverKeyRestrictions: map['serverKeyRestrictions'] == null
          ? null
          : ApiKeyRestrictionsServerKeyRestrictions.fromMap(
              (map['serverKeyRestrictions'] as Map).cast<String, dynamic>()),
    );
  }
}
