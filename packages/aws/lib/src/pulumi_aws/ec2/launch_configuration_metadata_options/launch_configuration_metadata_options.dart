// ignore_for_file: unused_element, unnecessary_cast

class LaunchConfigurationMetadataOptions {
  /// The state of the metadata service: <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span>, <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  final String? httpEndpoint;

  /// The desired HTTP PUT response hop limit for instance metadata requests.
  final int? httpPutResponseHopLimit;

  /// If session tokens are required: <span pulumi-lang-nodejs="`optional`" pulumi-lang-dotnet="`Optional`" pulumi-lang-go="`optional`" pulumi-lang-python="`optional`" pulumi-lang-yaml="`optional`" pulumi-lang-java="`optional`">`optional`</span>, <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>.
  final String? httpTokens;

  LaunchConfigurationMetadataOptions({
    this.httpEndpoint,
    this.httpPutResponseHopLimit,
    this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpEndpointValue = httpEndpoint;
    if (httpEndpointValue != null) {
      map['httpEndpoint'] = httpEndpointValue;
    }
    final httpPutResponseHopLimitValue = httpPutResponseHopLimit;
    if (httpPutResponseHopLimitValue != null) {
      map['httpPutResponseHopLimit'] = httpPutResponseHopLimitValue;
    }
    final httpTokensValue = httpTokens;
    if (httpTokensValue != null) {
      map['httpTokens'] = httpTokensValue;
    }
    return map;
  }

  factory LaunchConfigurationMetadataOptions.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationMetadataOptions(
      httpEndpoint:
          map['httpEndpoint'] == null ? null : map['httpEndpoint'] as String,
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null
          ? null
          : map['httpPutResponseHopLimit'] as int,
      httpTokens:
          map['httpTokens'] == null ? null : map['httpTokens'] as String,
    );
  }
}
