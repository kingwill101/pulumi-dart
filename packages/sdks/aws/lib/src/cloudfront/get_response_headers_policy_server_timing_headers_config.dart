// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicyServerTimingHeadersConfig {
  /// Whether CloudFront adds the `Server-Timing` header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.
  final pulumi.Input<bool> enabled;
  /// Number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the Server-Timing header to.
  final pulumi.Input<double> samplingRate;

  /// Creates a new [GetResponseHeadersPolicyServerTimingHeadersConfig].
  /// [enabled] Whether CloudFront adds the `Server-Timing` header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.
  /// [samplingRate] Number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the Server-Timing header to.
  const GetResponseHeadersPolicyServerTimingHeadersConfig({
    required this.enabled,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'samplingRate': samplingRate,
    };
  }

  factory GetResponseHeadersPolicyServerTimingHeadersConfig.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyServerTimingHeadersConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      samplingRate: pulumi.Input.fromValue((map['samplingRate'] as num).toDouble()),
    );
  }
}
