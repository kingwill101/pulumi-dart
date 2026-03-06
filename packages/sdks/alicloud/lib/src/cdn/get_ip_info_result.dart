// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpInfo.
class GetIpInfoResult {
  final String cdnIp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String ip;
  final String isp;
  final String ispEname;
  final String region;
  final String regionEname;

  /// Creates a new [GetIpInfoResult].
  /// [cdnIp] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ip] Required.
  /// [isp] Required.
  /// [ispEname] Required.
  /// [region] Required.
  /// [regionEname] Required.
  const GetIpInfoResult({
    required this.cdnIp,
    required this.id,
    required this.ip,
    required this.isp,
    required this.ispEname,
    required this.region,
    required this.regionEname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnIp': cdnIp,
      'id': id,
      'ip': ip,
      'isp': isp,
      'ispEname': ispEname,
      'region': region,
      'regionEname': regionEname,
    };
  }

  factory GetIpInfoResult.fromMap(Map<String, dynamic> map) {
    return GetIpInfoResult(
      cdnIp: map['cdnIp'] as String,
      id: map['id'] as String,
      ip: map['ip'] as String,
      isp: map['isp'] as String,
      ispEname: map['ispEname'] as String,
      region: map['region'] as String,
      regionEname: map['regionEname'] as String,
    );
  }
}

