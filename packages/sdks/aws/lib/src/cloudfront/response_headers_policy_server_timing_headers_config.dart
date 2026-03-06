// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicyServerTimingHeadersConfig {
  /// A Whether CloudFront adds the `Server-Timing` header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.
  final pulumi.Input<bool> enabled;
  /// A number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the Server-Timing header to. Valid range: Minimum value of 0.0. Maximum value of 100.0.
  final pulumi.Input<double> samplingRate;

  /// Creates a new [ResponseHeadersPolicyServerTimingHeadersConfig].
  /// [enabled] A Whether CloudFront adds the `Server-Timing` header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.
  /// [samplingRate] A number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the Server-Timing header to. Valid range: Minimum value of 0.0. Maximum value of 100.0.
  const ResponseHeadersPolicyServerTimingHeadersConfig({
    required this.enabled,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'samplingRate': samplingRate,
    };
  }

  factory ResponseHeadersPolicyServerTimingHeadersConfig.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyServerTimingHeadersConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      samplingRate: pulumi.Input.fromValue(map['samplingRate'] as double),
    );
  }
}

