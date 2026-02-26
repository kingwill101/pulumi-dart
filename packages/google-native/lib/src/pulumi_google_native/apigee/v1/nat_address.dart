import 'package:pulumi/pulumi.dart';
import 'nat_address_args.dart';

/// Creates a NAT address. The address is created in the RESERVED state and a static external IP address will be provisioned. At this time, the instance will not use this IP address for Internet egress traffic. The address can be activated for use once any required firewall IP whitelisting has been completed. **Note:** Not supported for Apigee hybrid.
class NatAddress extends CustomResource {
  late final Output<String> instanceId;

  /// The static IPV4 address.
  late final Output<String> ipAddress;

  /// Resource ID of the NAT address.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// State of the nat address.
  late final Output<String> state;

  NatAddress(
    String name, {
    NatAddressArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:NatAddress',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.state = registerOutput<String>('state');
  }
}
