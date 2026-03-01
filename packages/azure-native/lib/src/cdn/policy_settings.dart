// ignore_for_file: unused_element, unnecessary_cast


/// Defines contents of a web application firewall global configuration
class PolicySettings {
  /// If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  final String? defaultCustomBlockResponseBody;
  /// If the action type is block, this field defines the default customer overridable http response status code.
  final double? defaultCustomBlockResponseStatusCode;
  /// If action type is redirect, this field represents the default redirect URL for the client.
  final String? defaultRedirectUrl;
  /// describes if the policy is in enabled state or disabled state
  final String? enabledState;
  /// Describes if it is in detection mode or prevention mode at policy level.
  final String? mode;

  /// Creates a new [PolicySettings].
  /// [defaultCustomBlockResponseBody] If the action type is block, customer can override the response body. The body must be specified in base64 encoding.
  /// [defaultCustomBlockResponseStatusCode] If the action type is block, this field defines the default customer overridable http response status code.
  /// [defaultRedirectUrl] If action type is redirect, this field represents the default redirect URL for the client.
  /// [enabledState] describes if the policy is in enabled state or disabled state
  /// [mode] Describes if it is in detection mode or prevention mode at policy level.
  PolicySettings({
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

  factory PolicySettings.fromMap(Map<String, dynamic> map) {
    return PolicySettings(
      defaultCustomBlockResponseBody: map['defaultCustomBlockResponseBody'] == null ? null : map['defaultCustomBlockResponseBody'] as String,
      defaultCustomBlockResponseStatusCode: map['defaultCustomBlockResponseStatusCode'] == null ? null : map['defaultCustomBlockResponseStatusCode'] as double,
      defaultRedirectUrl: map['defaultRedirectUrl'] == null ? null : map['defaultRedirectUrl'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

