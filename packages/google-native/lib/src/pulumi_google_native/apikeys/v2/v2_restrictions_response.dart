// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'v2_android_key_restrictions_response.dart';
import 'v2_api_target_response.dart';
import 'v2_browser_key_restrictions_response.dart';
import 'v2_ios_key_restrictions_response.dart';
import 'v2_server_key_restrictions_response.dart';

/// Describes the restrictions on the key.
class V2RestrictionsResponse {
  /// The Android apps that are allowed to use the key.
  final V2AndroidKeyRestrictionsResponse androidKeyRestrictions;

  /// A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed.
  final List<V2ApiTargetResponse> apiTargets;

  /// The HTTP referrers (websites) that are allowed to use the key.
  final V2BrowserKeyRestrictionsResponse browserKeyRestrictions;

  /// The iOS apps that are allowed to use the key.
  final V2IosKeyRestrictionsResponse iosKeyRestrictions;

  /// The IP addresses of callers that are allowed to use the key.
  final V2ServerKeyRestrictionsResponse serverKeyRestrictions;

  V2RestrictionsResponse({
    required this.androidKeyRestrictions,
    required this.apiTargets,
    required this.browserKeyRestrictions,
    required this.iosKeyRestrictions,
    required this.serverKeyRestrictions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidKeyRestrictions'] = androidKeyRestrictions.toMap();
    map['apiTargets'] =
        Input.encodeList<V2ApiTargetResponse, Map<String, dynamic>>(
            apiTargets, (value) => value.toMap());
    map['browserKeyRestrictions'] = browserKeyRestrictions.toMap();
    map['iosKeyRestrictions'] = iosKeyRestrictions.toMap();
    map['serverKeyRestrictions'] = serverKeyRestrictions.toMap();
    return map;
  }

  factory V2RestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return V2RestrictionsResponse(
      androidKeyRestrictions: V2AndroidKeyRestrictionsResponse.fromMap(
          (map['androidKeyRestrictions'] as Map).cast<String, dynamic>()),
      apiTargets: Input.decodeList<V2ApiTargetResponse>(
          map['apiTargets'],
          (value) => V2ApiTargetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      browserKeyRestrictions: V2BrowserKeyRestrictionsResponse.fromMap(
          (map['browserKeyRestrictions'] as Map).cast<String, dynamic>()),
      iosKeyRestrictions: V2IosKeyRestrictionsResponse.fromMap(
          (map['iosKeyRestrictions'] as Map).cast<String, dynamic>()),
      serverKeyRestrictions: V2ServerKeyRestrictionsResponse.fromMap(
          (map['serverKeyRestrictions'] as Map).cast<String, dynamic>()),
    );
  }
}
