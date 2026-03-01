// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config_web_server_network_access_control_allowed_ip_range.dart';

class GetEnvironmentConfigWebServerNetworkAccessControl {
  /// A collection of allowed IP ranges with descriptions.
  final List<GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange>
  allowedIpRanges;

  /// Creates a new [GetEnvironmentConfigWebServerNetworkAccessControl].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  GetEnvironmentConfigWebServerNetworkAccessControl({
    required this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRanges':
          pulumi.Input.encodeList<
            GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange,
            Map<String, dynamic>
          >(allowedIpRanges, (value) => value.toMap()),
    };
  }

  factory GetEnvironmentConfigWebServerNetworkAccessControl.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEnvironmentConfigWebServerNetworkAccessControl(
      allowedIpRanges:
          pulumi.Input.decodeList<
            GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange
          >(
            map['allowedIpRanges'],
            (value) =>
                GetEnvironmentConfigWebServerNetworkAccessControlAllowedIpRange.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
