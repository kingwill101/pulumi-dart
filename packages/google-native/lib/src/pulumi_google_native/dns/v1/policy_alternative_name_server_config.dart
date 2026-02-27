// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server.dart';

class PolicyAlternativeNameServerConfig {
  final String? kind;

  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final List<PolicyAlternativeNameServerConfigTargetNameServer>?
      targetNameServers;

  PolicyAlternativeNameServerConfig({
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
      map['targetNameServers'] = pulumi.Input.encodeList<
              PolicyAlternativeNameServerConfigTargetNameServer,
              Map<String, dynamic>>(
          targetNameServersValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyAlternativeNameServerConfig.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfig(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNameServers: map['targetNameServers'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyAlternativeNameServerConfigTargetNameServer>(
              map['targetNameServers'],
              (value) =>
                  PolicyAlternativeNameServerConfigTargetNameServer.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
