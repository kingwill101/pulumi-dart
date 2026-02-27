// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'policy_alternative_name_server_config2.dart';
import 'policy_network2.dart';

/// The set of arguments for Policy.
class PolicyArgs3 {
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final Input<PolicyAlternativeNameServerConfig2>? alternativeNameServerConfig;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final Input<String>? clientOperationId;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  final Input<String>? description;

  /// Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  final Input<bool>? enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  final Input<bool>? enableLogging;
  final Input<String>? kind;

  /// User-assigned name for this policy.
  final Input<String>? name;

  /// List of network names specifying networks to which this policy is applied.
  final Input<List<PolicyNetwork2>>? networks;
  final Input<String>? project;

  PolicyArgs3({
    this.alternativeNameServerConfig,
    this.clientOperationId,
    this.description,
    this.enableInboundForwarding,
    this.enableLogging,
    this.kind,
    this.name,
    this.networks,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternativeNameServerConfigValue = alternativeNameServerConfig;
    if (alternativeNameServerConfigValue != null) {
      map['alternativeNameServerConfig'] = Input.mapOptionalInputValue<
              PolicyAlternativeNameServerConfig2, Map<String, dynamic>>(
          alternativeNameServerConfigValue, (value) => value.toMap());
    }
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableInboundForwardingValue = enableInboundForwarding;
    if (enableInboundForwardingValue != null) {
      map['enableInboundForwarding'] = enableInboundForwardingValue;
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.mapOptionalInputValue<List<PolicyNetwork2>,
              List<Map<String, dynamic>>>(
          networksValue,
          (value) => Input.encodeList<PolicyNetwork2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PolicyArgs3.fromMap(Map<String, dynamic> map) {
    return PolicyArgs3(
      alternativeNameServerConfig:
          Input.asOptionalInput<PolicyAlternativeNameServerConfig2>(
              map['alternativeNameServerConfig']),
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      description: Input.asOptionalInput<String>(map['description']),
      enableInboundForwarding:
          Input.asOptionalInput<bool>(map['enableInboundForwarding']),
      enableLogging: Input.asOptionalInput<bool>(map['enableLogging']),
      kind: Input.asOptionalInput<String>(map['kind']),
      name: Input.asOptionalInput<String>(map['name']),
      networks: Input.asOptionalInput<List<PolicyNetwork2>>(map['networks']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
