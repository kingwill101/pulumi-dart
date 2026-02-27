// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config_dns_v1beta2.dart';
import 'policy_network_dns_v1beta2.dart';

/// The set of arguments for Policy.
class PolicyDnsV1beta2Args {
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  final pulumi.Input<PolicyAlternativeNameServerConfigDnsV1beta2>?
      alternativeNameServerConfig;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  final pulumi.Input<String>? description;

  /// Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  final pulumi.Input<bool>? enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  final pulumi.Input<bool>? enableLogging;
  final pulumi.Input<String>? kind;

  /// User-assigned name for this policy.
  final pulumi.Input<String>? name;

  /// List of network names specifying networks to which this policy is applied.
  final pulumi.Input<List<PolicyNetworkDnsV1beta2>>? networks;
  final pulumi.Input<String>? project;

  PolicyDnsV1beta2Args({
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
      map['alternativeNameServerConfig'] = pulumi.Input.mapOptionalInputValue<
              PolicyAlternativeNameServerConfigDnsV1beta2,
              Map<String, dynamic>>(
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
      map['networks'] = pulumi.Input.mapOptionalInputValue<
              List<PolicyNetworkDnsV1beta2>, List<Map<String, dynamic>>>(
          networksValue,
          (value) => pulumi.Input.encodeList<PolicyNetworkDnsV1beta2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PolicyDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return PolicyDnsV1beta2Args(
      alternativeNameServerConfig: pulumi.Input.asOptionalInput<
              PolicyAlternativeNameServerConfigDnsV1beta2>(
          map['alternativeNameServerConfig']),
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableInboundForwarding:
          pulumi.Input.asOptionalInput<bool>(map['enableInboundForwarding']),
      enableLogging: pulumi.Input.asOptionalInput<bool>(map['enableLogging']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networks: pulumi.Input.asOptionalInput<List<PolicyNetworkDnsV1beta2>>(
          map['networks']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
