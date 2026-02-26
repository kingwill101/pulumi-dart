// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyServerTimingHeadersConfig {
  /// Whether CloudFront adds the `Server-Timing` header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.
  final bool enabled;

  /// Number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the Server-Timing header to.
  final double samplingRate;

  GetResponseHeadersPolicyServerTimingHeadersConfig({
    required this.enabled,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['samplingRate'] = samplingRate;
    return map;
  }

  factory GetResponseHeadersPolicyServerTimingHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyServerTimingHeadersConfig(
      enabled: map['enabled'] as bool,
      samplingRate: map['samplingRate'] as double,
    );
  }
}
