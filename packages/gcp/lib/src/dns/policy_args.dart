// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_alternative_name_server_config.dart';
import 'policy_dns64_config.dart';
import 'policy_network.dart';

/// {@template pulumi_dns_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_dns_policy_policy_args_doc}
class PolicyArgs {
  /// Sets an alternative name server for the associated networks.
  /// When specified, all DNS queries are forwarded to a name server that you choose.
  /// Names such as .internal are not available when an alternative name server is specified.
  /// Structure is documented below.
  final pulumi.Input<PolicyAlternativeNameServerConfig>?
      alternativeNameServerConfig;

  /// A textual description field. Defaults to 'Managed by Pulumi'.
  final pulumi.Input<String>? description;

  /// Configurations related to DNS64 for this Policy.
  /// Structure is documented below.
  final pulumi.Input<PolicyDns64Config>? dns64Config;

  /// Allows networks bound to this policy to receive DNS queries sent
  /// by VMs or applications over VPN connections. When enabled, a
  /// virtual IP address will be allocated from each of the sub-networks
  /// that are bound to this policy.
  final pulumi.Input<bool>? enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy.
  /// Defaults to no logging if not set.
  final pulumi.Input<bool>? enableLogging;

  /// User assigned name for this policy.
  final pulumi.Input<String>? name;

  /// List of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  final pulumi.Input<List<PolicyNetwork>>? networks;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [PolicyArgs].
  /// [alternativeNameServerConfig] Sets an alternative name server for the associated networks.
  /// [description] A textual description field. Defaults to 'Managed by Pulumi'.
  /// [dns64Config] Configurations related to DNS64 for this Policy.
  /// [enableInboundForwarding] Allows networks bound to this policy to receive DNS queries sent
  /// [enableLogging] Controls whether logging is enabled for the networks bound to this policy.
  /// [name] User assigned name for this policy.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [project] The ID of the project in which the resource belongs.
  PolicyArgs({
    PolicyAlternativeNameServerConfig? alternativeNameServerConfig,
    String? description,
    PolicyDns64Config? dns64Config,
    bool? enableInboundForwarding,
    bool? enableLogging,
    String? name,
    List<PolicyNetwork>? networks,
    String? project,
  })  : alternativeNameServerConfig =
            pulumi.Input.asOptionalInput<PolicyAlternativeNameServerConfig>(
                alternativeNameServerConfig),
        description = pulumi.Input.asOptionalInput<String>(description),
        dns64Config =
            pulumi.Input.asOptionalInput<PolicyDns64Config>(dns64Config),
        enableInboundForwarding =
            pulumi.Input.asOptionalInput<bool>(enableInboundForwarding),
        enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
        name = pulumi.Input.asOptionalInput<String>(name),
        networks = pulumi.Input.asOptionalInput<List<PolicyNetwork>>(networks),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternativeNameServerConfigValue = alternativeNameServerConfig;
    if (alternativeNameServerConfigValue != null) {
      map['alternativeNameServerConfig'] = pulumi.Input.mapOptionalInputValue<
              PolicyAlternativeNameServerConfig, Map<String, dynamic>>(
          alternativeNameServerConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dns64ConfigValue = dns64Config;
    if (dns64ConfigValue != null) {
      map['dns64Config'] = pulumi.Input.mapOptionalInputValue<PolicyDns64Config,
          Map<String, dynamic>>(dns64ConfigValue, (value) => value.toMap());
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
      map['networks'] = pulumi.Input.mapOptionalInputValue<List<PolicyNetwork>,
              List<Map<String, dynamic>>>(
          networksValue,
          (value) =>
              pulumi.Input.encodeList<PolicyNetwork, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      alternativeNameServerConfig: map['alternativeNameServerConfig'] == null
          ? null
          : PolicyAlternativeNameServerConfig.fromMap(
              (map['alternativeNameServerConfig'] as Map)
                  .cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      dns64Config: map['dns64Config'] == null
          ? null
          : PolicyDns64Config.fromMap(
              (map['dns64Config'] as Map).cast<String, dynamic>()),
      enableInboundForwarding: map['enableInboundForwarding'] == null
          ? null
          : map['enableInboundForwarding'] as bool,
      enableLogging:
          map['enableLogging'] == null ? null : map['enableLogging'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      networks: map['networks'] == null
          ? null
          : pulumi.Input.decodeList<PolicyNetwork>(
              map['networks'],
              (value) => PolicyNetwork.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
