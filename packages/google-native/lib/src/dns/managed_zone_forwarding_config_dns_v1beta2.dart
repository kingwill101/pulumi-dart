// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_name_server_target_dns_v1beta2.dart';

class ManagedZoneForwardingConfigDnsV1beta2 {
  final String? kind;

  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final List<ManagedZoneForwardingConfigNameServerTargetDnsV1beta2>?
  targetNameServers;

  /// Creates a new [ManagedZoneForwardingConfigDnsV1beta2].
  /// [kind] Optional.
  /// [targetNameServers] List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  ManagedZoneForwardingConfigDnsV1beta2({this.kind, this.targetNameServers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'targetNameServers': ?targetNameServers == null
          ? null
          : pulumi.Input.encodeList<
              ManagedZoneForwardingConfigNameServerTargetDnsV1beta2,
              Map<String, dynamic>
            >(targetNameServers!, (value) => value.toMap()),
    };
  }

  factory ManagedZoneForwardingConfigDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneForwardingConfigDnsV1beta2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNameServers: map['targetNameServers'] == null
          ? null
          : pulumi.Input.decodeList<
              ManagedZoneForwardingConfigNameServerTargetDnsV1beta2
            >(
              map['targetNameServers'],
              (value) =>
                  ManagedZoneForwardingConfigNameServerTargetDnsV1beta2.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
