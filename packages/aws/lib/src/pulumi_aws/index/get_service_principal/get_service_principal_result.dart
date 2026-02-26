// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServicePrincipal.
class GetServicePrincipalResult {
  /// Identifier of the current Service Principal (compound of service, Region and suffix). (e.g. `logs.us-east-1.amazonaws.com`in AWS Commercial, `logs.cn-north-1.amazonaws.com.cn` in AWS China).
  final String id;

  /// Service Principal Name (e.g., `logs.amazonaws.com` in AWS Commercial, `logs.amazonaws.com.cn` in AWS China).
  final String name;
  final String region;
  final String serviceName;

  /// Suffix of the SPN (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  final String suffix;

  GetServicePrincipalResult({
    required this.id,
    required this.name,
    required this.region,
    required this.serviceName,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['serviceName'] = serviceName;
    map['suffix'] = suffix;
    return map;
  }

  factory GetServicePrincipalResult.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalResult(
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      serviceName: map['serviceName'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
