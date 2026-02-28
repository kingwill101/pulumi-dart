// ignore_for_file: unused_element, unnecessary_cast

class InfrastructureConfigurationInstanceMetadataOptions {
  /// The number of hops that an instance can traverse to reach its destonation.
  final int? httpPutResponseHopLimit;

  /// Whether a signed token is required for instance metadata retrieval requests. Valid values: `required`, `optional`.
  final String? httpTokens;

  /// Creates a new [InfrastructureConfigurationInstanceMetadataOptions].
  /// [httpPutResponseHopLimit] The number of hops that an instance can traverse to reach its destonation.
  /// [httpTokens] Whether a signed token is required for instance metadata retrieval requests. Valid values: `required`, `optional`.
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
