// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicVirtualInterface resources.
class PublicVirtualInterfaceState {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final pulumi.Input<String>? addressFamily;
  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  final pulumi.Input<String>? amazonAddress;
  final pulumi.Input<String>? amazonSideAsn;
  /// The ARN of the virtual interface.
  final pulumi.Input<String>? arn;
  /// The Direct Connect endpoint on which the virtual interface terminates.
  final pulumi.Input<String>? awsDevice;
  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  final pulumi.Input<int>? bgpAsn;
  /// The authentication key for BGP configuration.
  final pulumi.Input<String>? bgpAuthKey;
  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  final pulumi.Input<String>? connectionId;
  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  final pulumi.Input<String>? customerAddress;
  /// The name for the virtual interface.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of routes to be advertised to the AWS network in this region.
  final pulumi.Input<List<String>>? routeFilterPrefixes;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VLAN ID.
  final pulumi.Input<int>? vlan;

  /// Creates a new [PublicVirtualInterfaceState].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  /// [amazonSideAsn] Optional.
  /// [arn] The ARN of the virtual interface.
  /// [awsDevice] The Direct Connect endpoint on which the virtual interface terminates.
  /// [bgpAsn] The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [connectionId] The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  /// [name] The name for the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeFilterPrefixes] A list of routes to be advertised to the AWS network in this region.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vlan] The VLAN ID.
  PublicVirtualInterfaceState({
    pulumi.Output<String>? addressFamily,
    pulumi.Output<String>? amazonAddress,
    pulumi.Output<String>? amazonSideAsn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsDevice,
    pulumi.Output<int>? bgpAsn,
    pulumi.Output<String>? bgpAuthKey,
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? customerAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? routeFilterPrefixes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? vlan,
  }) :
      addressFamily = pulumi.Input.asOptionalInput<String>(addressFamily),
      amazonAddress = pulumi.Input.asOptionalInput<String>(amazonAddress),
      amazonSideAsn = pulumi.Input.asOptionalInput<String>(amazonSideAsn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsDevice = pulumi.Input.asOptionalInput<String>(awsDevice),
      bgpAsn = pulumi.Input.asOptionalInput<int>(bgpAsn),
      bgpAuthKey = pulumi.Input.asOptionalInput<String>(bgpAuthKey),
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      customerAddress = pulumi.Input.asOptionalInput<String>(customerAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeFilterPrefixes = pulumi.Input.asOptionalInput<List<String>>(routeFilterPrefixes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vlan = pulumi.Input.asOptionalInput<int>(vlan);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'amazonAddress': ?amazonAddress,
      'amazonSideAsn': ?amazonSideAsn,
      'arn': ?arn,
      'awsDevice': ?awsDevice,
      'bgpAsn': ?bgpAsn,
      'bgpAuthKey': ?bgpAuthKey,
      'connectionId': ?connectionId,
      'customerAddress': ?customerAddress,
      'name': ?name,
      'region': ?region,
      'routeFilterPrefixes': ?routeFilterPrefixes,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vlan': ?vlan,
    };
  }

  factory PublicVirtualInterfaceState.fromMap(Map<String, dynamic> map) {
    return PublicVirtualInterfaceState(
      addressFamily: map['addressFamily'] == null ? null : pulumi.Output.create<String>(map['addressFamily'] as String),
      amazonAddress: map['amazonAddress'] == null ? null : pulumi.Output.create<String>(map['amazonAddress'] as String),
      amazonSideAsn: map['amazonSideAsn'] == null ? null : pulumi.Output.create<String>(map['amazonSideAsn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsDevice: map['awsDevice'] == null ? null : pulumi.Output.create<String>(map['awsDevice'] as String),
      bgpAsn: map['bgpAsn'] == null ? null : pulumi.Output.create<int>(map['bgpAsn'] as int),
      bgpAuthKey: map['bgpAuthKey'] == null ? null : pulumi.Output.create<String>(map['bgpAuthKey'] as String),
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      customerAddress: map['customerAddress'] == null ? null : pulumi.Output.create<String>(map['customerAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeFilterPrefixes: map['routeFilterPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['routeFilterPrefixes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vlan: map['vlan'] == null ? null : pulumi.Output.create<int>(map['vlan'] as int),
    );
  }
}

