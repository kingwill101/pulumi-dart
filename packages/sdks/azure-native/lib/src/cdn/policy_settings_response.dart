// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines contents of a web application firewall global configuration
class PolicySettingsResponse {
  /// If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String>? defaultCustomBlockResponseBody;
  /// If the action type is block, this field defines the default customer overridable http response status code.
  final pulumi.Input<double>? defaultCustomBlockResponseStatusCode;
  /// If action type is redirect, this field represents the default redirect URL for the client.
  final pulumi.Input<String>? defaultRedirectUrl;
  /// describes if the policy is in enabled state or disabled state
  final pulumi.Input<String>? enabledState;
  /// Describes if it is in detection mode or prevention mode at policy level.
  final pulumi.Input<String>? mode;

  /// Creates a new [PolicySettingsResponse].
  /// [defaultCustomBlockResponseBody] If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  /// [defaultCustomBlockResponseStatusCode] If the action type is block, this field defines the default customer overridable http response status code.
  /// [defaultRedirectUrl] If action type is redirect, this field represents the default redirect URL for the client.
  /// [enabledState] describes if the policy is in enabled state or disabled state
  /// [mode] Describes if it is in detection mode or prevention mode at policy level.
  PolicySettingsResponse({
    this.defaultCustomBlockResponseBody,
    this.defaultCustomBlockResponseStatusCode,
    this.defaultRedirectUrl,
    this.enabledState,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCustomBlockResponseBody': ?defaultCustomBlockResponseBody,
      'defaultCustomBlockResponseStatusCode': ?defaultCustomBlockResponseStatusCode,
      'defaultRedirectUrl': ?defaultRedirectUrl,
      'enabledState': ?enabledState,
      'mode': ?mode,
    };
  }

  factory PolicySettingsResponse.fromMap(Map<String, dynamic> map) {
    return PolicySettingsResponse(
      defaultCustomBlockResponseBody: map['defaultCustomBlockResponseBody'] == null ? null : (map['defaultCustomBlockResponseBody']! as String).input(),
      defaultCustomBlockResponseStatusCode: map['defaultCustomBlockResponseStatusCode'] == null ? null : (map['defaultCustomBlockResponseStatusCode']! as double).input(),
      defaultRedirectUrl: map['defaultRedirectUrl'] == null ? null : (map['defaultRedirectUrl']! as String).input(),
      enabledState: map['enabledState'] == null ? null : (map['enabledState']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
    );
  }
}

