// ignore_for_file: unused_element, unnecessary_cast

class WebhookAuthenticationConfiguration {
  /// A valid CIDR block for `IP` filtering. Required for `IP`.
  final String? allowedIpRange;

  /// The shared secret for the GitHub repository webhook. Set this as <span pulumi-lang-nodejs="`secret`" pulumi-lang-dotnet="`Secret`" pulumi-lang-go="`secret`" pulumi-lang-python="`secret`" pulumi-lang-yaml="`secret`" pulumi-lang-java="`secret`">`secret`</span> in your <span pulumi-lang-nodejs="`githubRepositoryWebhook`" pulumi-lang-dotnet="`GithubRepositoryWebhook`" pulumi-lang-go="`githubRepositoryWebhook`" pulumi-lang-python="`github_repository_webhook`" pulumi-lang-yaml="`githubRepositoryWebhook`" pulumi-lang-java="`githubRepositoryWebhook`">`github_repository_webhook`</span>'s <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> block. Required for `GITHUB_HMAC`.
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
