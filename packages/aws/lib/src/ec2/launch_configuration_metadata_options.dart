// ignore_for_file: unused_element, unnecessary_cast

class LaunchConfigurationMetadataOptions {
  /// The state of the metadata service: `enabled`, `disabled`.
  final String? httpEndpoint;

  /// The desired HTTP PUT response hop limit for instance metadata requests.
  final int? httpPutResponseHopLimit;

  /// If session tokens are required: `optional`, `required`.
  final String? httpTokens;

  /// Creates a new [LaunchConfigurationMetadataOptions].
  /// [httpEndpoint] The state of the metadata service: `enabled`, `disabled`.
  /// [httpPutResponseHopLimit] The desired HTTP PUT response hop limit for instance metadata requests.
  /// [httpTokens] If session tokens are required: `optional`, `required`.
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
