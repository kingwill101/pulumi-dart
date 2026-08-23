// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionCacheTagConfig {
  /// Name of the HTTP header to extract cache tags. The header value must contain comma-separated tag values.
  final pulumi.Input<String> headerName;

  /// Creates a new [DistributionCacheTagConfig].
  /// [headerName] Name of the HTTP header to extract cache tags. The header value must contain comma-separated tag values.
  const DistributionCacheTagConfig({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory DistributionCacheTagConfig.fromMap(Map<String, dynamic> map) {
    return DistributionCacheTagConfig(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
