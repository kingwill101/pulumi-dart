// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_alternative_name_server_config/policy_alternative_name_server_config.dart';
import '../policy_dns64_config/policy_dns64_config.dart';
import '../policy_network/policy_network.dart';

/// The set of arguments for Policy.
class PolicyArgs2 {
  /// Sets an alternative name server for the associated networks.
  /// When specified, all DNS queries are forwarded to a name server that you choose.
  /// Names such as .internal are not available when an alternative name server is specified.
  /// Structure is documented below.
  final Input<PolicyAlternativeNameServerConfig>? alternativeNameServerConfig;

  /// A textual description field. Defaults to 'Managed by Pulumi'.
  final Input<String>? description;

  /// Configurations related to DNS64 for this Policy.
  /// Structure is documented below.
  final Input<PolicyDns64Config>? dns64Config;

  /// Allows networks bound to this policy to receive DNS queries sent
  /// by VMs or applications over VPN connections. When enabled, a
  /// virtual IP address will be allocated from each of the sub-networks
  /// that are bound to this policy.
  final Input<bool>? enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy.
  /// Defaults to no logging if not set.
  final Input<bool>? enableLogging;

  /// User assigned name for this policy.
  final Input<String>? name;

  /// List of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  final Input<List<PolicyNetwork>>? networks;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  PolicyArgs2({
    this.alternativeNameServerConfig,
    this.description,
    this.dns64Config,
    this.enableInboundForwarding,
    this.enableLogging,
    this.name,
    this.networks,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternativeNameServerConfigValue = alternativeNameServerConfig;
    if (alternativeNameServerConfigValue != null) {
      map['alternativeNameServerConfig'] = Input.mapOptionalInputValue<
              PolicyAlternativeNameServerConfig, Map<String, dynamic>>(
          alternativeNameServerConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dns64ConfigValue = dns64Config;
    if (dns64ConfigValue != null) {
      map['dns64Config'] =
          Input.mapOptionalInputValue<PolicyDns64Config, Map<String, dynamic>>(
              dns64ConfigValue, (value) => value.toMap());
    }
    final enableInboundForwardingValue = enableInboundForwarding;
    if (enableInboundForwardingValue != null) {
      map['enableInboundForwarding'] = enableInboundForwardingValue;
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.mapOptionalInputValue<List<PolicyNetwork>,
              List<Map<String, dynamic>>>(
          networksValue,
          (value) => Input.encodeList<PolicyNetwork, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PolicyArgs2.fromMap(Map<String, dynamic> map) {
    return PolicyArgs2(
      alternativeNameServerConfig:
          Input.asOptionalInput<PolicyAlternativeNameServerConfig>(
              map['alternativeNameServerConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      dns64Config: Input.asOptionalInput<PolicyDns64Config>(map['dns64Config']),
      enableInboundForwarding:
          Input.asOptionalInput<bool>(map['enableInboundForwarding']),
      enableLogging: Input.asOptionalInput<bool>(map['enableLogging']),
      name: Input.asOptionalInput<String>(map['name']),
      networks: Input.asOptionalInput<List<PolicyNetwork>>(map['networks']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
