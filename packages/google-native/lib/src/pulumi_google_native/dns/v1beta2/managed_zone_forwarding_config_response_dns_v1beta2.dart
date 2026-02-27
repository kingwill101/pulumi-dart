// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_name_server_target_response_dns_v1beta2.dart';

class ManagedZoneForwardingConfigResponseDnsV1beta2 {
  final String kind;

  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final List<ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2>
      targetNameServers;

  ManagedZoneForwardingConfigResponseDnsV1beta2({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['targetNameServers'] = pulumi.Input.encodeList<
        ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2,
        Map<String, dynamic>>(targetNameServers, (value) => value.toMap());
    return map;
  }

  factory ManagedZoneForwardingConfigResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneForwardingConfigResponseDnsV1beta2(
      kind: map['kind'] as String,
      targetNameServers: pulumi.Input.decodeList<
              ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2>(
          map['targetNameServers'],
          (value) =>
              ManagedZoneForwardingConfigNameServerTargetResponseDnsV1beta2
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
