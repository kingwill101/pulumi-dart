import 'package:pulumi/pulumi.dart';
import 'policy_alternative_name_server_config_response.dart';
import 'policy_args2.dart';
import 'policy_network_response.dart';

/// Creates a new Policy.
class Policy2 extends CustomResource {
  /// Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.
  late final Output<PolicyAlternativeNameServerConfigResponse>
      alternativeNameServerConfig;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final Output<String?> clientOperationId;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.
  late final Output<String> description;

  /// Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.
  late final Output<bool> enableInboundForwarding;

  /// Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.
  late final Output<bool> enableLogging;
  late final Output<String> kind;

  /// User-assigned name for this policy.
  late final Output<String> name;

  /// List of network names specifying networks to which this policy is applied.
  late final Output<List<PolicyNetworkResponse>> networks;
  late final Output<String> project;

  Policy2(
    String name, {
    PolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alternativeNameServerConfig =
        Output.createUnknown<PolicyAlternativeNameServerConfigResponse>();
    this.clientOperationId = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String>();
    this.enableInboundForwarding = Output.createUnknown<bool>();
    this.enableLogging = Output.createUnknown<bool>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networks = Output.createUnknown<List<PolicyNetworkResponse>>();
    this.project = Output.createUnknown<String>();
  }
}
