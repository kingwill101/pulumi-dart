// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'managed_zone_forwarding_config_name_server_target.dart';

class ManagedZoneForwardingConfig {
  final String? kind;

  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final List<ManagedZoneForwardingConfigNameServerTarget>? targetNameServers;

  ManagedZoneForwardingConfig({
    this.kind,
    this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final targetNameServersValue = targetNameServers;
    if (targetNameServersValue != null) {
      map['targetNameServers'] = Input.encodeList<
              ManagedZoneForwardingConfigNameServerTarget,
              Map<String, dynamic>>(
          targetNameServersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagedZoneForwardingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfig(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNameServers: map['targetNameServers'] == null
          ? null
          : Input.decodeList<ManagedZoneForwardingConfigNameServerTarget>(
              map['targetNameServers'],
              (value) => ManagedZoneForwardingConfigNameServerTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
