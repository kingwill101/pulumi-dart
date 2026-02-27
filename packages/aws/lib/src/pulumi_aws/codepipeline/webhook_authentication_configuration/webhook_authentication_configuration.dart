// ignore_for_file: unused_element, unnecessary_cast

class WebhookAuthenticationConfiguration {
  /// A valid CIDR block for `IP` filtering. Required for `IP`.
  final String? allowedIpRange;

  /// The shared secret for the GitHub repository webhook. Set this as `secret` in your `github_repository_webhook`'s `configuration` block. Required for `GITHUB_HMAC`.
  final String? secretToken;

  WebhookAuthenticationConfiguration({
    this.allowedIpRange,
    this.secretToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedIpRangeValue = allowedIpRange;
    if (allowedIpRangeValue != null) {
      map['allowedIpRange'] = allowedIpRangeValue;
    }
    final secretTokenValue = secretToken;
    if (secretTokenValue != null) {
      map['secretToken'] = secretTokenValue;
    }
    return map;
  }

  factory WebhookAuthenticationConfiguration.fromMap(Map<String, dynamic> map) {
    return WebhookAuthenticationConfiguration(
      allowedIpRange: map['allowedIpRange'] == null
          ? null
          : map['allowedIpRange'] as String,
      secretToken:
          map['secretToken'] == null ? null : map['secretToken'] as String,
    );
  }
}
