import 'package:pulumi/pulumi.dart';
import 'multicast_group_source_args.dart';

/// Registers sources (network interfaces) with the transit gateway multicast group.
/// A multicast source is a network interface attached to a supported instance that sends multicast traffic.
class MulticastGroupSource extends CustomResource {
  /// The IP address assigned to the transit gateway multicast group.
  late final Output<String> groupIpAddress;

  /// The group members' network interface ID to register with the transit gateway multicast group.
  late final Output<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the transit gateway multicast domain.
  late final Output<String> transitGatewayMulticastDomainId;

  MulticastGroupSource(
    String name, {
    MulticastGroupSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastGroupSource:MulticastGroupSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupIpAddress = registerOutput<String>('groupIpAddress');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.region = registerOutput<String>('region');
    this.transitGatewayMulticastDomainId =
        registerOutput<String>('transitGatewayMulticastDomainId');
  }
}
