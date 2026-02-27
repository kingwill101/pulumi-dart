// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'managed_zone_forwarding_config_name_server_target2.dart';

class ManagedZoneForwardingConfig2 {
  final String? kind;

  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final List<ManagedZoneForwardingConfigNameServerTarget2>? targetNameServers;

  ManagedZoneForwardingConfig2({
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
              ManagedZoneForwardingConfigNameServerTarget2,
              Map<String, dynamic>>(
          targetNameServersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagedZoneForwardingConfig2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfig2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNameServers: map['targetNameServers'] == null
          ? null
          : Input.decodeList<ManagedZoneForwardingConfigNameServerTarget2>(
              map['targetNameServers'],
              (value) => ManagedZoneForwardingConfigNameServerTarget2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
