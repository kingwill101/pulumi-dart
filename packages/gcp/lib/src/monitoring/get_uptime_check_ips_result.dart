// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_uptime_check_ips_uptime_check_ip.dart';

/// Result data returned by getUptimeCheckIPs.
class GetUptimeCheckIPsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of uptime check IPs used by Stackdriver Monitoring. Each `uptime_check_ip` contains:
  final List<GetUptimeCheckIPsUptimeCheckIp> uptimeCheckIps;

  /// Creates a new [GetUptimeCheckIPsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [uptimeCheckIps] A list of uptime check IPs used by Stackdriver Monitoring. Each `uptime_check_ip` contains:
  GetUptimeCheckIPsResult({required this.id, required this.uptimeCheckIps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uptimeCheckIps':
          pulumi.Input.encodeList<
            GetUptimeCheckIPsUptimeCheckIp,
            Map<String, dynamic>
          >(uptimeCheckIps, (value) => value.toMap()),
    };
  }

  factory GetUptimeCheckIPsResult.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckIPsResult(
      id: map['id'] as String,
      uptimeCheckIps: pulumi.Input.decodeList<GetUptimeCheckIPsUptimeCheckIp>(
        map['uptimeCheckIps'],
        (value) => GetUptimeCheckIPsUptimeCheckIp.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
