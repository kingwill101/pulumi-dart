// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'managed_zone_forwarding_config_name_server_target_response2.dart';

class ManagedZoneForwardingConfigResponse2 {
  final String kind;

  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final List<ManagedZoneForwardingConfigNameServerTargetResponse2>
      targetNameServers;

  ManagedZoneForwardingConfigResponse2({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['targetNameServers'] = Input.encodeList<
        ManagedZoneForwardingConfigNameServerTargetResponse2,
        Map<String, dynamic>>(targetNameServers, (value) => value.toMap());
    return map;
  }

  factory ManagedZoneForwardingConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneForwardingConfigResponse2(
      kind: map['kind'] as String,
      targetNameServers: Input.decodeList<
              ManagedZoneForwardingConfigNameServerTargetResponse2>(
          map['targetNameServers'],
          (value) =>
              ManagedZoneForwardingConfigNameServerTargetResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
