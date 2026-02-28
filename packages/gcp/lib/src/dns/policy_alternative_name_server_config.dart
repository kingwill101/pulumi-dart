// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server.dart';

class PolicyAlternativeNameServerConfig {
  /// Sets an alternative name server for the associated networks. When specified,
  /// all DNS queries are forwarded to a name server that you choose. Names such as .internal
  /// are not available when an alternative name server is specified.
  /// Structure is documented below.
  final List<PolicyAlternativeNameServerConfigTargetNameServer> targetNameServers;

  /// Creates a new [PolicyAlternativeNameServerConfig].
  /// [targetNameServers] Sets an alternative name server for the associated networks. When specified,
  PolicyAlternativeNameServerConfig({
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetNameServers': pulumi.Input.encodeList<PolicyAlternativeNameServerConfigTargetNameServer, Map<String, dynamic>>(targetNameServers, (value) => value.toMap()),
    };
  }

  factory PolicyAlternativeNameServerConfig.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfig(
      targetNameServers: pulumi.Input.decodeList<PolicyAlternativeNameServerConfigTargetNameServer>(map['targetNameServers'], (value) => PolicyAlternativeNameServerConfigTargetNameServer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

