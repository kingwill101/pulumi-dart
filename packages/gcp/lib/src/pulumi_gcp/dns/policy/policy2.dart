import 'package:pulumi/pulumi.dart';
import '../policy_alternative_name_server_config/policy_alternative_name_server_config.dart';
import '../policy_dns64_config/policy_dns64_config.dart';
import '../policy_network/policy_network.dart';
import 'policy_args2.dart';

/// A policy is a collection of DNS rules applied to one or more Virtual
/// Private Cloud resources.
///
///
/// To get more information about Policy, see:
///
/// * [API documentation](https://cloud.google.com/dns/docs/reference/v1beta2/policies)
/// * How-to Guides
/// * [Using DNS server policies](https://cloud.google.com/dns/zones/#using-dns-server-policies)
///
/// ## Example Usage
///
/// ### Dns Policy Basic
///
///
///
///
/// ## Import
///
/// Policy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/policies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Policy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/policy:Policy default projects/{{project}}/policies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/policy:Policy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/policy:Policy default {{name}}
/// ```
class Policy2 extends CustomResource {
  /// Sets an alternative name server for the associated networks.
  /// When specified, all DNS queries are forwarded to a name server that you choose.
  /// Names such as .internal are not available when an alternative name server is specified.
  /// Structure is documented below.
  late final Output<PolicyAlternativeNameServerConfig?>
      alternativeNameServerConfig;

  /// A textual description field. Defaults to 'Managed by Pulumi'.
  late final Output<String?> description;

  /// Configurations related to DNS64 for this Policy.
  /// Structure is documented below.
  late final Output<PolicyDns64Config> dns64Config;

  /// Allows networks bound to this policy to receive DNS queries sent
  /// by VMs or applications over VPN connections. When enabled, a
  /// virtual IP address will be allocated from each of the sub-networks
  /// that are bound to this policy.
  late final Output<bool?> enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy.
  /// Defaults to no logging if not set.
  late final Output<bool?> enableLogging;

  /// User assigned name for this policy.
  late final Output<String> name;

  /// List of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  late final Output<List<PolicyNetwork>?> networks;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  Policy2(
    String name, {
    PolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dns/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alternativeNameServerConfig =
        registerOutput<PolicyAlternativeNameServerConfig?>(
            'alternativeNameServerConfig');
    this.description = registerOutput<String?>('description');
    this.dns64Config = registerOutput<PolicyDns64Config>('dns64Config');
    this.enableInboundForwarding =
        registerOutput<bool?>('enableInboundForwarding');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<PolicyNetwork>?>('networks');
    this.project = registerOutput<String>('project');
  }
}
