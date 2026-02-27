// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'v2_android_key_restrictions.dart';
import 'v2_api_target.dart';
import 'v2_browser_key_restrictions.dart';
import 'v2_ios_key_restrictions.dart';
import 'v2_server_key_restrictions.dart';

/// Describes the restrictions on the key.
class V2Restrictions {
  /// The Android apps that are allowed to use the key.
  final V2AndroidKeyRestrictions? androidKeyRestrictions;

  /// A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  final List<V2ApiTarget>? apiTargets;

  /// The HTTP referrers (websites) that are allowed to use the key.
  final V2BrowserKeyRestrictions? browserKeyRestrictions;

  /// The iOS apps that are allowed to use the key.
  final V2IosKeyRestrictions? iosKeyRestrictions;

  /// The IP addresses of callers that are allowed to use the key.
  final V2ServerKeyRestrictions? serverKeyRestrictions;

  V2Restrictions({
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
      map['apiTargets'] = Input.encodeList<V2ApiTarget, Map<String, dynamic>>(
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

  factory V2Restrictions.fromMap(Map<String, dynamic> map) {
    return V2Restrictions(
      androidKeyRestrictions: map['androidKeyRestrictions'] == null
          ? null
          : V2AndroidKeyRestrictions.fromMap(
              (map['androidKeyRestrictions'] as Map).cast<String, dynamic>()),
      apiTargets: map['apiTargets'] == null
          ? null
          : Input.decodeList<V2ApiTarget>(
              map['apiTargets'],
              (value) =>
                  V2ApiTarget.fromMap((value as Map).cast<String, dynamic>())),
      browserKeyRestrictions: map['browserKeyRestrictions'] == null
          ? null
          : V2BrowserKeyRestrictions.fromMap(
              (map['browserKeyRestrictions'] as Map).cast<String, dynamic>()),
      iosKeyRestrictions: map['iosKeyRestrictions'] == null
          ? null
          : V2IosKeyRestrictions.fromMap(
              (map['iosKeyRestrictions'] as Map).cast<String, dynamic>()),
      serverKeyRestrictions: map['serverKeyRestrictions'] == null
          ? null
          : V2ServerKeyRestrictions.fromMap(
              (map['serverKeyRestrictions'] as Map).cast<String, dynamic>()),
    );
  }
}
