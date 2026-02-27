// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_target_name_server_dns_v1beta2.dart';

class PolicyAlternativeNameServerConfigDnsV1beta2 {
  final String? kind;

  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final List<PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2>?
      targetNameServers;

  PolicyAlternativeNameServerConfigDnsV1beta2({
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
              PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2,
              Map<String, dynamic>>(
          targetNameServersValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyAlternativeNameServerConfigDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigDnsV1beta2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      targetNameServers: map['targetNameServers'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2>(
              map['targetNameServers'],
              (value) =>
                  PolicyAlternativeNameServerConfigTargetNameServerDnsV1beta2
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
