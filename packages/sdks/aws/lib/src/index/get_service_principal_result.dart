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

  /// Creates a new [GetServicePrincipalResult].
  /// [id] Identifier of the current Service Principal (compound of service, Region and suffix). (e.g. `logs.us-east-1.amazonaws.com`in AWS Commercial, `logs.cn-north-1.amazonaws.com.cn` in AWS China).
  /// [name] Service Principal Name (e.g., `logs.amazonaws.com` in AWS Commercial, `logs.amazonaws.com.cn` in AWS China).
  /// [region] Required.
  /// [serviceName] Required.
  /// [suffix] Suffix of the SPN (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  GetServicePrincipalResult({
    required this.id,
    required this.name,
    required this.region,
    required this.serviceName,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'region': region,
      'serviceName': serviceName,
      'suffix': suffix,
    };
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
