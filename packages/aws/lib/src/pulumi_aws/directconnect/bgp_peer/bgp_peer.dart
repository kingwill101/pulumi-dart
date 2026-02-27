import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_peer_args.dart';

/// Provides a Direct Connect BGP peer resource.
class BgpPeer extends pulumi.CustomResource {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  late final pulumi.Output<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  late final pulumi.Output<String> amazonAddress;

  /// The Direct Connect endpoint on which the BGP peer terminates.
  late final pulumi.Output<String> awsDevice;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  late final pulumi.Output<int> bgpAsn;

  /// The authentication key for BGP configuration.
  late final pulumi.Output<String> bgpAuthKey;

  /// The ID of the BGP peer.
  late final pulumi.Output<String> bgpPeerId;

  /// The Up/Down state of the BGP peer.
  late final pulumi.Output<String> bgpStatus;

  /// The IPv4 CIDR destination address to which Amazon should send traffic.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  late final pulumi.Output<String> customerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the Direct Connect virtual interface on which to create the BGP peer.
  late final pulumi.Output<String> virtualInterfaceId;

  BgpPeer(
    String name, {
    BgpPeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/bgpPeer:BgpPeer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressFamily = registerOutput<String>('addressFamily');
    this.amazonAddress = registerOutput<String>('amazonAddress');
    this.awsDevice = registerOutput<String>('awsDevice');
    this.bgpAsn = registerOutput<int>('bgpAsn');
    this.bgpAuthKey = registerOutput<String>('bgpAuthKey');
    this.bgpPeerId = registerOutput<String>('bgpPeerId');
    this.bgpStatus = registerOutput<String>('bgpStatus');
    this.customerAddress = registerOutput<String>('customerAddress');
    this.region = registerOutput<String>('region');
    this.virtualInterfaceId = registerOutput<String>('virtualInterfaceId');
  }
}
