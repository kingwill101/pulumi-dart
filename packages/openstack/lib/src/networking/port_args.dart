// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_allowed_address_pair.dart';
import 'port_binding.dart';
import 'port_extra_dhcp_option.dart';
import 'port_fixed_ip.dart';

/// {@template pulumi_networking_port_port_args_doc}
/// The set of arguments for Port.
/// {@endtemplate}
/// {@macro pulumi_networking_port_port_args_doc}
class PortArgs {
  /// Administrative up/down status for the port
  /// (must be `true` or `false` if provided). Changing this updates the
  /// `admin_state_up` of an existing port.
  final pulumi.Input<bool>? adminStateUp;
  /// An IP/MAC Address pair of additional IP
  /// addresses that can be active on this port. The structure is described
  /// below.
  final pulumi.Input<List<PortAllowedAddressPair>>? allowedAddressPairs;
  /// The port binding allows to specify binding information
  /// for the port. The structure is described below.
  final pulumi.Input<PortBinding>? binding;
  /// Human-readable description of the port. Changing
  /// this updates the `description` of an existing port.
  final pulumi.Input<String>? description;
  /// The ID of the device attached to the port. Changing this
  /// creates a new port.
  final pulumi.Input<String>? deviceId;
  /// The device owner of the port. Changing this creates
  /// a new port.
  final pulumi.Input<String>? deviceOwner;
  /// The port DNS name. Available, when Neutron DNS extension
  /// is enabled.
  final pulumi.Input<String>? dnsName;
  /// An extra DHCP option that needs to be configured
  /// on the port. The structure is described below. Can be specified multiple
  /// times.
  final pulumi.Input<List<PortExtraDhcpOption>>? extraDhcpOptions;
  /// An array of desired IPs for
  /// this port. The structure is described below.
  final pulumi.Input<List<PortFixedIp>>? fixedIps;
  /// Specify a specific MAC address for the port. Changing
  /// this creates a new port.
  final pulumi.Input<String>? macAddress;
  /// A unique name for the port. Changing this
  /// updates the `name` of an existing port.
  final pulumi.Input<String>? name;
  /// The ID of the network to attach the port to. Changing
  /// this creates a new port.
  final pulumi.Input<String> networkId;
  /// Create a port with no fixed
  /// IP address. This will also remove any fixed IPs previously set on a port. `true`
  /// is the only valid value for this argument.
  final pulumi.Input<bool>? noFixedIp;
  /// If set to
  /// `true`, then no security groups are applied to the port. If set to `false` and
  /// no `security_group_ids` are specified, then the port will yield to the default
  /// behavior of the Networking service, which is to usually apply the "default"
  /// security group.
  final pulumi.Input<bool>? noSecurityGroups;
  /// Whether to explicitly enable or disable
  /// port security on the port. Port Security is usually enabled by default, so
  /// omitting argument will usually result in a value of `true`. Setting this
  /// explicitly to `false` will disable port security. In order to disable port
  /// security, the port must not have any security groups. Valid values are `true`
  /// and `false`.
  final pulumi.Input<bool>? portSecurityEnabled;
  /// Reference to the associated QoS policy.
  final pulumi.Input<String>? qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// port.
  final pulumi.Input<String>? region;
  /// A list
  /// of security group IDs to apply to the port. The security groups must be
  /// specified by ID and not name (as opposed to how they are configured with
  /// the Compute Instance).
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A set of string tags for the port.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the port. Required if admin wants
  /// to create a port for another tenant. Changing this creates a new port.
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [PortArgs].
  /// [adminStateUp] Administrative up/down status for the port
  /// [allowedAddressPairs] An IP/MAC Address pair of additional IP
  /// [binding] The port binding allows to specify binding information
  /// [description] Human-readable description of the port. Changing
  /// [deviceId] The ID of the device attached to the port. Changing this
  /// [deviceOwner] The device owner of the port. Changing this creates
  /// [dnsName] The port DNS name. Available, when Neutron DNS extension
  /// [extraDhcpOptions] An extra DHCP option that needs to be configured
  /// [fixedIps] An array of desired IPs for
  /// [macAddress] Specify a specific MAC address for the port. Changing
  /// [name] A unique name for the port. Changing this
  /// [networkId] The ID of the network to attach the port to. Changing
  /// [noFixedIp] Create a port with no fixed
  /// [noSecurityGroups] If set to
  /// [portSecurityEnabled] Whether to explicitly enable or disable
  /// [qosPolicyId] Reference to the associated QoS policy.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [securityGroupIds] A list
  /// [tags] A set of string tags for the port.
  /// [tenantId] The owner of the port. Required if admin wants
  /// [valueSpecs] Map of additional options.
  PortArgs({
    bool? adminStateUp,
    List<PortAllowedAddressPair>? allowedAddressPairs,
    PortBinding? binding,
    String? description,
    String? deviceId,
    String? deviceOwner,
    String? dnsName,
    List<PortExtraDhcpOption>? extraDhcpOptions,
    List<PortFixedIp>? fixedIps,
    String? macAddress,
    String? name,
    required String networkId,
    bool? noFixedIp,
    bool? noSecurityGroups,
    bool? portSecurityEnabled,
    String? qosPolicyId,
    String? region,
    List<String>? securityGroupIds,
    List<String>? tags,
    String? tenantId,
    Map<String, String>? valueSpecs,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      allowedAddressPairs = pulumi.Input.asOptionalInput<List<PortAllowedAddressPair>>(allowedAddressPairs),
      binding = pulumi.Input.asOptionalInput<PortBinding>(binding),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      deviceOwner = pulumi.Input.asOptionalInput<String>(deviceOwner),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      extraDhcpOptions = pulumi.Input.asOptionalInput<List<PortExtraDhcpOption>>(extraDhcpOptions),
      fixedIps = pulumi.Input.asOptionalInput<List<PortFixedIp>>(fixedIps),
      macAddress = pulumi.Input.asOptionalInput<String>(macAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asInput<String>(networkId),
      noFixedIp = pulumi.Input.asOptionalInput<bool>(noFixedIp),
      noSecurityGroups = pulumi.Input.asOptionalInput<bool>(noSecurityGroups),
      portSecurityEnabled = pulumi.Input.asOptionalInput<bool>(portSecurityEnabled),
      qosPolicyId = pulumi.Input.asOptionalInput<String>(qosPolicyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allowedAddressPairs': ?pulumi.Input.mapOptionalInputValue<List<PortAllowedAddressPair>, List<Map<String, dynamic>>>(allowedAddressPairs, (value) => pulumi.Input.encodeList<PortAllowedAddressPair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'binding': ?pulumi.Input.mapOptionalInputValue<PortBinding, Map<String, dynamic>>(binding, (value) => value.toMap()),
      'description': ?description,
      'deviceId': ?deviceId,
      'deviceOwner': ?deviceOwner,
      'dnsName': ?dnsName,
      'extraDhcpOptions': ?pulumi.Input.mapOptionalInputValue<List<PortExtraDhcpOption>, List<Map<String, dynamic>>>(extraDhcpOptions, (value) => pulumi.Input.encodeList<PortExtraDhcpOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fixedIps': ?pulumi.Input.mapOptionalInputValue<List<PortFixedIp>, List<Map<String, dynamic>>>(fixedIps, (value) => pulumi.Input.encodeList<PortFixedIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'macAddress': ?macAddress,
      'name': ?name,
      'networkId': networkId,
      'noFixedIp': ?noFixedIp,
      'noSecurityGroups': ?noSecurityGroups,
      'portSecurityEnabled': ?portSecurityEnabled,
      'qosPolicyId': ?qosPolicyId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory PortArgs.fromMap(Map<String, dynamic> map) {
    return PortArgs(
      adminStateUp: map['adminStateUp'] == null ? null : map['adminStateUp'] as bool,
      allowedAddressPairs: map['allowedAddressPairs'] == null ? null : pulumi.Input.decodeList<PortAllowedAddressPair>(map['allowedAddressPairs'], (value) => PortAllowedAddressPair.fromMap((value as Map).cast<String, dynamic>())),
      binding: map['binding'] == null ? null : PortBinding.fromMap((map['binding'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      deviceOwner: map['deviceOwner'] == null ? null : map['deviceOwner'] as String,
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      extraDhcpOptions: map['extraDhcpOptions'] == null ? null : pulumi.Input.decodeList<PortExtraDhcpOption>(map['extraDhcpOptions'], (value) => PortExtraDhcpOption.fromMap((value as Map).cast<String, dynamic>())),
      fixedIps: map['fixedIps'] == null ? null : pulumi.Input.decodeList<PortFixedIp>(map['fixedIps'], (value) => PortFixedIp.fromMap((value as Map).cast<String, dynamic>())),
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkId: map['networkId'] as String,
      noFixedIp: map['noFixedIp'] == null ? null : map['noFixedIp'] as bool,
      noSecurityGroups: map['noSecurityGroups'] == null ? null : map['noSecurityGroups'] as bool,
      portSecurityEnabled: map['portSecurityEnabled'] == null ? null : map['portSecurityEnabled'] as bool,
      qosPolicyId: map['qosPolicyId'] == null ? null : map['qosPolicyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      valueSpecs: map['valueSpecs'] == null ? null : (map['valueSpecs'] as Map).cast<String, String>(),
    );
  }
}

