// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_environment_config_web_server_network_access_control_allowed_ip_range/get_environment_config_web_server_network_access_control_allowed_ip_range.dart';

class GetEnvironmentConfigWebServerNetworkAccessControl {
  /// A collection of allowed IP ranges with descriptions.
  final List<GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange>
      allowedIpRanges;

  GetEnvironmentConfigWebServerNetworkAccessControl({
    required this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIpRanges'] = Input.encodeList<
        GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange,
        Map<String, dynamic>>(allowedIpRanges, (value) => value.toMap());
    return map;
  }

  factory GetEnvironmentConfigWebServerNetworkAccessControl.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigWebServerNetworkAccessControl(
      allowedIpRanges: Input.decodeList<
              GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange>(
          map['allowedIpRanges'],
          (value) =>
              GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
