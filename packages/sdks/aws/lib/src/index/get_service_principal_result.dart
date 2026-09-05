// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServicePrincipal.
class GetServicePrincipalResult {
  /// Identifier of the current Service Principal (compound of service, Region and suffix). (e.g. `logs.us-east-1.amazonaws.com`in AWS Commercial, `logs.cn-north-1.amazonaws.com.cn` in AWS China).
  final String? id;
  /// Service Principal Name (e.g., `logs.amazonaws.com` in AWS Commercial, `logs.amazonaws.com.cn` in AWS China).
  final String? name;
  final String? region;
  final String? serviceName;
  /// Suffix of the SPN (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  final String? suffix;

  /// Creates a new [GetServicePrincipalResult].
  /// [id] Identifier of the current Service Principal (compound of service, Region and suffix). (e.g. `logs.us-east-1.amazonaws.com`in AWS Commercial, `logs.cn-north-1.amazonaws.com.cn` in AWS China).
  /// [name] Service Principal Name (e.g., `logs.amazonaws.com` in AWS Commercial, `logs.amazonaws.com.cn` in AWS China).
  /// [region] Optional.
  /// [serviceName] Optional.
  /// [suffix] Suffix of the SPN (e.g., `amazonaws.com` in AWS Commercial, `amazonaws.com.cn` in AWS China).
  const GetServicePrincipalResult({
    this.id,
    this.name,
    this.region,
    this.serviceName,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'serviceName': ?serviceName,
      'suffix': ?suffix,
    };
  }

  factory GetServicePrincipalResult.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
