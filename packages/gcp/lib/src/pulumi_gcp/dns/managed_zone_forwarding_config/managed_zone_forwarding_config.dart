// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_zone_forwarding_config_target_name_server/managed_zone_forwarding_config_target_name_server.dart';

class ManagedZoneForwardingConfig {
  /// List of target name servers to forward to. Cloud DNS will
  /// select the best available name server if more than
  /// one target is given.
  /// Structure is documented below.
  final List<ManagedZoneForwardingConfigTargetNameServer> targetNameServers;

  ManagedZoneForwardingConfig({
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetNameServers'] = pulumi.Input.encodeList<
        ManagedZoneForwardingConfigTargetNameServer,
        Map<String, dynamic>>(targetNameServers, (value) => value.toMap());
    return map;
  }

  factory ManagedZoneForwardingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfig(
      targetNameServers:
          pulumi.Input.decodeList<ManagedZoneForwardingConfigTargetNameServer>(
              map['targetNameServers'],
              (value) => ManagedZoneForwardingConfigTargetNameServer.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
