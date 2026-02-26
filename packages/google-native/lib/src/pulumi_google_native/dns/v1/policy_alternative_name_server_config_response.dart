// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'policy_alternative_name_server_config_target_name_server_response.dart';

class PolicyAlternativeNameServerConfigResponse {
  final String kind;

  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final List<PolicyAlternativeNameServerConfigTargetNameServerResponse>
      targetNameServers;

  PolicyAlternativeNameServerConfigResponse({
    required this.kind,
    required this.targetNameServers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['targetNameServers'] = Input.encodeList<
        PolicyAlternativeNameServerConfigTargetNameServerResponse,
        Map<String, dynamic>>(targetNameServers, (value) => value.toMap());
    return map;
  }

  factory PolicyAlternativeNameServerConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigResponse(
      kind: map['kind'] as String,
      targetNameServers: Input.decodeList<
              PolicyAlternativeNameServerConfigTargetNameServerResponse>(
          map['targetNameServers'],
          (value) =>
              PolicyAlternativeNameServerConfigTargetNameServerResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
