// ignore_for_file: unused_element, unnecessary_cast

class InfrastructureConfigurationInstanceMetadataOptions {
  /// The number of hops that an instance can traverse to reach its destonation.
  final int? httpPutResponseHopLimit;

  /// Whether a signed token is required for instance metadata retrieval requests. Valid values: <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>, <span pulumi-lang-nodejs="`optional`" pulumi-lang-dotnet="`Optional`" pulumi-lang-go="`optional`" pulumi-lang-python="`optional`" pulumi-lang-yaml="`optional`" pulumi-lang-java="`optional`">`optional`</span>.
  final String? httpTokens;

  InfrastructureConfigurationInstanceMetadataOptions({
    this.httpPutResponseHopLimit,
    this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory InfrastructureConfigurationInstanceMetadataOptions.fromMap(
      Map<String, dynamic> map) {
    return InfrastructureConfigurationInstanceMetadataOptions(
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null
          ? null
          : map['httpPutResponseHopLimit'] as int,
      httpTokens:
          map['httpTokens'] == null ? null : map['httpTokens'] as String,
    );
  }
}
