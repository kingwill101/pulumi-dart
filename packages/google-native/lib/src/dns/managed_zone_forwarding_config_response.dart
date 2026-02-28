// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_forwarding_config_name_server_target_response.dart';

class ManagedZoneForwardingConfigResponse {
  final String kind;
  /// List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  final List<ManagedZoneForwardingConfigNameServerTargetResponse> targetNameServers;

  /// Creates a new [ManagedZoneForwardingConfigResponse].
  /// [kind] Required.
  /// [targetNameServers] List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.
  ManagedZoneForwardingConfigResponse({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'targetNameServers': pulumi.Input.encodeList<ManagedZoneForwardingConfigNameServerTargetResponse, Map<String, dynamic>>(targetNameServers, (value) => value.toMap()),
    };
  }

  factory ManagedZoneForwardingConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfigResponse(
      kind: map['kind'] as String,
      targetNameServers: pulumi.Input.decodeList<ManagedZoneForwardingConfigNameServerTargetResponse>(map['targetNameServers'], (value) => ManagedZoneForwardingConfigNameServerTargetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

