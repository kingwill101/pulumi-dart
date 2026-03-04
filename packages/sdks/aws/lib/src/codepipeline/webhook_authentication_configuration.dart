// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebhookAuthenticationConfiguration {
  /// A valid CIDR block for `IP` filtering. Required for `IP`.
  final pulumi.Input<String>? allowedIpRange;

  /// The shared secret for the GitHub repository webhook. Set this as `secret` in your `github_repository_webhook`'s `configuration` block. Required for `GITHUB_HMAC`.
  final pulumi.Input<String>? secretToken;

  /// Creates a new [WebhookAuthenticationConfiguration].
  /// [allowedIpRange] A valid CIDR block for `IP` filtering. Required for `IP`.
  /// [secretToken] The shared secret for the GitHub repository webhook. Set this as `secret` in your `github_repository_webhook`'s `configuration` block. Required for `GITHUB_HMAC`.
  WebhookAuthenticationConfiguration({this.allowedIpRange, this.secretToken});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRange': ?allowedIpRange,
      'secretToken': ?secretToken,
    };
  }

  factory WebhookAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return WebhookAuthenticationConfiguration(
      allowedIpRange: (() {
        final guardedValue = map['allowedIpRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretToken: (() {
        final guardedValue = map['secretToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
