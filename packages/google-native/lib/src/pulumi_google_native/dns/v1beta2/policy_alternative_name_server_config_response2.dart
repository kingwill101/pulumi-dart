// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'policy_alternative_name_server_config_target_name_server_response2.dart';

class PolicyAlternativeNameServerConfigResponse2 {
  final String kind;

  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final List<PolicyAlternativeNameServerConfigTargetNameServerResponse2>
      targetNameServers;

  PolicyAlternativeNameServerConfigResponse2({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['targetNameServers'] = Input.encodeList<
        PolicyAlternativeNameServerConfigTargetNameServerResponse2,
        Map<String, dynamic>>(targetNameServers, (value) => value.toMap());
    return map;
  }

  factory PolicyAlternativeNameServerConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigResponse2(
      kind: map['kind'] as String,
      targetNameServers: Input.decodeList<
              PolicyAlternativeNameServerConfigTargetNameServerResponse2>(
          map['targetNameServers'],
          (value) => PolicyAlternativeNameServerConfigTargetNameServerResponse2
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
