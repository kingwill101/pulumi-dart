import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_address_args.dart';

/// Creates a NAT address. The address is created in the RESERVED state and a static external IP address will be provisioned. At this time, the instance will not use this IP address for Internet egress traffic. The address can be activated for use once any required firewall IP whitelisting has been completed. **Note:** Not supported for Apigee hybrid.
class NatAddress extends pulumi.CustomResource {
  late final pulumi.Output<String> instanceId;
  /// The static IPV4 address.
  late final pulumi.Output<String> ipAddress;
  /// Resource ID of the NAT address.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// State of the nat address.
  late final pulumi.Output<String> state;

  /// Creates a new [NatAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatAddress]. {@macro pulumi_apigee_v1_nat_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatAddress(
    String name, {
    NatAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:NatAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.state = registerOutput<String>('state');
  }
}
