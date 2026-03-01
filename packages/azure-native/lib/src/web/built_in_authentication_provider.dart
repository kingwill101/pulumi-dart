/// The default authentication provider to use when multiple providers are configured.
/// This setting is only needed if multiple providers are configured and the unauthenticated client
/// action is set to "RedirectToLoginPage".
enum BuiltInAuthenticationProvider {
  valueAzureActiveDirectory("AzureActiveDirectory"),
  valueFacebook("Facebook"),
  valueGoogle("Google"),
  valueMicrosoftAccount("MicrosoftAccount"),
  valueTwitter("Twitter"),
  valueGithub("Github");

  const BuiltInAuthenticationProvider(this.value);
  final String value;

  static BuiltInAuthenticationProvider fromValue(String value) {
    for (final item in BuiltInAuthenticationProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuiltInAuthenticationProvider value: $value');
  }
}

