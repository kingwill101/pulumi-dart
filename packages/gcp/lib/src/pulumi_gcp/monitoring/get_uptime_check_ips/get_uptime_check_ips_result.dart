// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_uptime_check_ips_uptime_check_ip/get_uptime_check_ips_uptime_check_ip.dart';

/// Result data returned by getUptimeCheckIPs.
class GetUptimeCheckIPsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of uptime check IPs used by Stackdriver Monitoring. Each <span pulumi-lang-nodejs="`uptimeCheckIp`" pulumi-lang-dotnet="`UptimeCheckIp`" pulumi-lang-go="`uptimeCheckIp`" pulumi-lang-python="`uptime_check_ip`" pulumi-lang-yaml="`uptimeCheckIp`" pulumi-lang-java="`uptimeCheckIp`">`uptime_check_ip`</span> contains:
  final List<GetUptimeCheckIPsUptimeCheckIp> uptimeCheckIps;

  GetUptimeCheckIPsResult({
    required this.id,
    required this.uptimeCheckIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['uptimeCheckIps'] =
        Input.encodeList<GetUptimeCheckIPsUptimeCheckIp, Map<String, dynamic>>(
            uptimeCheckIps, (value) => value.toMap());
    return map;
  }

  factory GetUptimeCheckIPsResult.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckIPsResult(
      id: map['id'] as String,
      uptimeCheckIps: Input.decodeList<GetUptimeCheckIPsUptimeCheckIp>(
          map['uptimeCheckIps'],
          (value) => GetUptimeCheckIPsUptimeCheckIp.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
