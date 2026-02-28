// ignore_for_file: unused_element, unnecessary_cast

class AccountConnectorProviderOauthConfig {
  /// Required. User selected scopes to apply to the Oauth config
  /// In the event of changing scopes, user records under AccountConnector will
  /// be deleted and users will re-auth again.
  final List<String> scopes;

  /// List of providers that are owned by Developer Connect.
  /// Possible values:
  /// GITHUB
  /// GITLAB
  /// GOOGLE
  /// SENTRY
  /// ROVO
  /// NEW_RELIC
  /// DATASTAX
  final String? systemProviderId;

  /// Creates a new [AccountConnectorProviderOauthConfig].
  /// [scopes] Required. User selected scopes to apply to the Oauth config
  /// [systemProviderId] List of providers that are owned by Developer Connect.
  AccountConnectorProviderOauthConfig({
    required this.scopes,
    this.systemProviderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scopes'] = scopes;
    final systemProviderIdValue = systemProviderId;
    if (systemProviderIdValue != null) {
      map['systemProviderId'] = systemProviderIdValue;
    }
    return map;
  }

  factory AccountConnectorProviderOauthConfig.fromMap(
      Map<String, dynamic> map) {
    return AccountConnectorProviderOauthConfig(
      scopes: (map['scopes'] as List).cast<String>(),
      systemProviderId: map['systemProviderId'] == null
          ? null
          : map['systemProviderId'] as String,
    );
  }
}
