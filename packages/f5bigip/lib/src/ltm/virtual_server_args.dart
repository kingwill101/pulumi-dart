// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_virtual_server_virtual_server_args_doc}
/// The set of arguments for VirtualServer.
/// {@endtemplate}
/// {@macro pulumi_ltm_virtual_server_virtual_server_args_doc}
class VirtualServerArgs {
  /// List of client context profiles associated on the virtual server. Not mutually exclusive with profiles and server_profiles
  final pulumi.Input<List<String>>? clientProfiles;
  /// Specifies the maximum number of connections allowed for the virtual server.
  final pulumi.Input<int>? connectionLimit;
  final pulumi.Input<String>? defaultPersistenceProfile;
  /// Description of Virtual server
  final pulumi.Input<String>? description;
  /// Destination IP
  final pulumi.Input<String>? destination;
  /// Specifies a fallback persistence profile for the Virtual Server to use when the default persistence profile is not available.
  final pulumi.Input<String>? fallbackPersistenceProfile;
  /// Applies the specified AFM policy to the virtual in an enforcing way,when creating a new virtual, if this parameter is not specified, the enforced is disabled.This should be in full path ex: `/Common/afm-test-policy`.
  final pulumi.Input<String>? firewallEnforcedPolicy;
  /// Specifies a network protocol name you want the system to use to direct traffic on this virtual server. The default is `tcp`. valid options are [`any`,`udp`,`tcp`]
  final pulumi.Input<String>? ipProtocol;
  /// The iRules list you want run on this virtual server. iRules help automate the intercepting, processing, and routing of application traffic.
  final pulumi.Input<List<String>>? irules;
  /// Mask can either be in CIDR notation or decimal, i.e.: 24 or 255.255.255.0. A CIDR mask of 0 is the same as 0.0.0.0
  final pulumi.Input<String>? mask;
  /// Name of the virtual server
  final pulumi.Input<String> name;
  final pulumi.Input<String>? perFlowRequestAccessPolicy;
  /// List of persistence profiles associated with the Virtual Server.
  final pulumi.Input<List<String>>? persistenceProfiles;
  /// Specifies the policies for the virtual server.
  final pulumi.Input<List<String>>? policies;
  /// Default pool name
  final pulumi.Input<String>? pool;
  /// Listen port for the virtual server
  final pulumi.Input<int>? port;
  /// List of profiles associated both client and server contexts on the virtual server. This includes protocol, ssl, http, etc.
  final pulumi.Input<List<String>>? profiles;
  /// Specifies the log profile applied to the virtual server.
  final pulumi.Input<List<String>>? securityLogProfiles;
  /// List of server context profiles associated on the virtual server. Not mutually exclusive with profiles and client_profiles
  final pulumi.Input<List<String>>? serverProfiles;
  /// Specifies the name of an existing SNAT pool that you want the virtual server to use to implement selective and intelligent SNATs.
  final pulumi.Input<String>? snatpool;
  /// Specifies an IP address or network from which the virtual server will accept traffic.
  final pulumi.Input<String>? source;
  /// Can be either omitted for `none` or the values `automap` options : [`snat`,`automap`,`none`].
  final pulumi.Input<String>? sourceAddressTranslation;
  /// Specifies whether the system preserves the source port of the connection. The default is `preserve`.
  final pulumi.Input<String>? sourcePort;
  /// Specifies whether the virtual server and its resources are available for load balancing. The default is Enabled
  final pulumi.Input<String>? state;
  /// Specifies destination traffic matching information to which the virtual server sends traffic
  final pulumi.Input<String>? trafficmatchingCriteria;
  /// Enables or disables address translation for the virtual server. Turn address translation off for a virtual server if you want to use the virtual server to load balance connections to any address. This option is useful when the system is load balancing devices that have the same IP address.
  final pulumi.Input<String>? translateAddress;
  /// Enables or disables port translation. Turn port translation off for a virtual server if you want to use the virtual server to load balance connections to any service
  final pulumi.Input<String>? translatePort;
  /// The virtual server is enabled/disabled on this set of VLANs,enable/disabled will be desided by attribute `vlan_enabled`
  final pulumi.Input<List<String>>? vlans;
  /// Enables the virtual server on the VLANs specified by the `vlans` option.
  /// By default it is `false` i.e vlanDisabled on specified vlans, if we want enable virtual server on VLANs specified by `vlans`, mark this attribute to `true`.
  final pulumi.Input<bool>? vlansEnabled;

  /// Creates a new [VirtualServerArgs].
  /// [clientProfiles] List of client context profiles associated on the virtual server. Not mutually exclusive with profiles and server_profiles
  /// [connectionLimit] Specifies the maximum number of connections allowed for the virtual server.
  /// [defaultPersistenceProfile] Optional.
  /// [description] Description of Virtual server
  /// [destination] Destination IP
  /// [fallbackPersistenceProfile] Specifies a fallback persistence profile for the Virtual Server to use when the default persistence profile is not available.
  /// [firewallEnforcedPolicy] Applies the specified AFM policy to the virtual in an enforcing way,when creating a new virtual, if this parameter is not specified, the enforced is disabled.This should be in full path ex: `/Common/afm-test-policy`.
  /// [ipProtocol] Specifies a network protocol name you want the system to use to direct traffic on this virtual server. The default is `tcp`. valid options are [`any`,`udp`,`tcp`]
  /// [irules] The iRules list you want run on this virtual server. iRules help automate the intercepting, processing, and routing of application traffic.
  /// [mask] Mask can either be in CIDR notation or decimal, i.e.: 24 or 255.255.255.0. A CIDR mask of 0 is the same as 0.0.0.0
  /// [name] Name of the virtual server
  /// [perFlowRequestAccessPolicy] Optional.
  /// [persistenceProfiles] List of persistence profiles associated with the Virtual Server.
  /// [policies] Specifies the policies for the virtual server.
  /// [pool] Default pool name
  /// [port] Listen port for the virtual server
  /// [profiles] List of profiles associated both client and server contexts on the virtual server. This includes protocol, ssl, http, etc.
  /// [securityLogProfiles] Specifies the log profile applied to the virtual server.
  /// [serverProfiles] List of server context profiles associated on the virtual server. Not mutually exclusive with profiles and client_profiles
  /// [snatpool] Specifies the name of an existing SNAT pool that you want the virtual server to use to implement selective and intelligent SNATs.
  /// [source] Specifies an IP address or network from which the virtual server will accept traffic.
  /// [sourceAddressTranslation] Can be either omitted for `none` or the values `automap` options : [`snat`,`automap`,`none`].
  /// [sourcePort] Specifies whether the system preserves the source port of the connection. The default is `preserve`.
  /// [state] Specifies whether the virtual server and its resources are available for load balancing. The default is Enabled
  /// [trafficmatchingCriteria] Specifies destination traffic matching information to which the virtual server sends traffic
  /// [translateAddress] Enables or disables address translation for the virtual server. Turn address translation off for a virtual server if you want to use the virtual server to load balance connections to any address. This option is useful when the system is load balancing devices that have the same IP address.
  /// [translatePort] Enables or disables port translation. Turn port translation off for a virtual server if you want to use the virtual server to load balance connections to any service
  /// [vlans] The virtual server is enabled/disabled on this set of VLANs,enable/disabled will be desided by attribute `vlan_enabled`
  /// [vlansEnabled] Enables the virtual server on the VLANs specified by the `vlans` option.
  VirtualServerArgs({
    List<String>? clientProfiles,
    int? connectionLimit,
    String? defaultPersistenceProfile,
    String? description,
    String? destination,
    String? fallbackPersistenceProfile,
    String? firewallEnforcedPolicy,
    String? ipProtocol,
    List<String>? irules,
    String? mask,
    required String name,
    String? perFlowRequestAccessPolicy,
    List<String>? persistenceProfiles,
    List<String>? policies,
    String? pool,
    int? port,
    List<String>? profiles,
    List<String>? securityLogProfiles,
    List<String>? serverProfiles,
    String? snatpool,
    String? source,
    String? sourceAddressTranslation,
    String? sourcePort,
    String? state,
    String? trafficmatchingCriteria,
    String? translateAddress,
    String? translatePort,
    List<String>? vlans,
    bool? vlansEnabled,
  }) :
      clientProfiles = pulumi.Input.asOptionalInput<List<String>>(clientProfiles),
      connectionLimit = pulumi.Input.asOptionalInput<int>(connectionLimit),
      defaultPersistenceProfile = pulumi.Input.asOptionalInput<String>(defaultPersistenceProfile),
      description = pulumi.Input.asOptionalInput<String>(description),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      fallbackPersistenceProfile = pulumi.Input.asOptionalInput<String>(fallbackPersistenceProfile),
      firewallEnforcedPolicy = pulumi.Input.asOptionalInput<String>(firewallEnforcedPolicy),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      irules = pulumi.Input.asOptionalInput<List<String>>(irules),
      mask = pulumi.Input.asOptionalInput<String>(mask),
      name = pulumi.Input.asInput<String>(name),
      perFlowRequestAccessPolicy = pulumi.Input.asOptionalInput<String>(perFlowRequestAccessPolicy),
      persistenceProfiles = pulumi.Input.asOptionalInput<List<String>>(persistenceProfiles),
      policies = pulumi.Input.asOptionalInput<List<String>>(policies),
      pool = pulumi.Input.asOptionalInput<String>(pool),
      port = pulumi.Input.asOptionalInput<int>(port),
      profiles = pulumi.Input.asOptionalInput<List<String>>(profiles),
      securityLogProfiles = pulumi.Input.asOptionalInput<List<String>>(securityLogProfiles),
      serverProfiles = pulumi.Input.asOptionalInput<List<String>>(serverProfiles),
      snatpool = pulumi.Input.asOptionalInput<String>(snatpool),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceAddressTranslation = pulumi.Input.asOptionalInput<String>(sourceAddressTranslation),
      sourcePort = pulumi.Input.asOptionalInput<String>(sourcePort),
      state = pulumi.Input.asOptionalInput<String>(state),
      trafficmatchingCriteria = pulumi.Input.asOptionalInput<String>(trafficmatchingCriteria),
      translateAddress = pulumi.Input.asOptionalInput<String>(translateAddress),
      translatePort = pulumi.Input.asOptionalInput<String>(translatePort),
      vlans = pulumi.Input.asOptionalInput<List<String>>(vlans),
      vlansEnabled = pulumi.Input.asOptionalInput<bool>(vlansEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientProfiles': ?clientProfiles,
      'connectionLimit': ?connectionLimit,
      'defaultPersistenceProfile': ?defaultPersistenceProfile,
      'description': ?description,
      'destination': ?destination,
      'fallbackPersistenceProfile': ?fallbackPersistenceProfile,
      'firewallEnforcedPolicy': ?firewallEnforcedPolicy,
      'ipProtocol': ?ipProtocol,
      'irules': ?irules,
      'mask': ?mask,
      'name': name,
      'perFlowRequestAccessPolicy': ?perFlowRequestAccessPolicy,
      'persistenceProfiles': ?persistenceProfiles,
      'policies': ?policies,
      'pool': ?pool,
      'port': ?port,
      'profiles': ?profiles,
      'securityLogProfiles': ?securityLogProfiles,
      'serverProfiles': ?serverProfiles,
      'snatpool': ?snatpool,
      'source': ?source,
      'sourceAddressTranslation': ?sourceAddressTranslation,
      'sourcePort': ?sourcePort,
      'state': ?state,
      'trafficmatchingCriteria': ?trafficmatchingCriteria,
      'translateAddress': ?translateAddress,
      'translatePort': ?translatePort,
      'vlans': ?vlans,
      'vlansEnabled': ?vlansEnabled,
    };
  }

  factory VirtualServerArgs.fromMap(Map<String, dynamic> map) {
    return VirtualServerArgs(
      clientProfiles: map['clientProfiles'] == null ? null : (map['clientProfiles'] as List).cast<String>(),
      connectionLimit: map['connectionLimit'] == null ? null : map['connectionLimit'] as int,
      defaultPersistenceProfile: map['defaultPersistenceProfile'] == null ? null : map['defaultPersistenceProfile'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destination: map['destination'] == null ? null : map['destination'] as String,
      fallbackPersistenceProfile: map['fallbackPersistenceProfile'] == null ? null : map['fallbackPersistenceProfile'] as String,
      firewallEnforcedPolicy: map['firewallEnforcedPolicy'] == null ? null : map['firewallEnforcedPolicy'] as String,
      ipProtocol: map['ipProtocol'] == null ? null : map['ipProtocol'] as String,
      irules: map['irules'] == null ? null : (map['irules'] as List).cast<String>(),
      mask: map['mask'] == null ? null : map['mask'] as String,
      name: map['name'] as String,
      perFlowRequestAccessPolicy: map['perFlowRequestAccessPolicy'] == null ? null : map['perFlowRequestAccessPolicy'] as String,
      persistenceProfiles: map['persistenceProfiles'] == null ? null : (map['persistenceProfiles'] as List).cast<String>(),
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<String>(),
      pool: map['pool'] == null ? null : map['pool'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      profiles: map['profiles'] == null ? null : (map['profiles'] as List).cast<String>(),
      securityLogProfiles: map['securityLogProfiles'] == null ? null : (map['securityLogProfiles'] as List).cast<String>(),
      serverProfiles: map['serverProfiles'] == null ? null : (map['serverProfiles'] as List).cast<String>(),
      snatpool: map['snatpool'] == null ? null : map['snatpool'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceAddressTranslation: map['sourceAddressTranslation'] == null ? null : map['sourceAddressTranslation'] as String,
      sourcePort: map['sourcePort'] == null ? null : map['sourcePort'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      trafficmatchingCriteria: map['trafficmatchingCriteria'] == null ? null : map['trafficmatchingCriteria'] as String,
      translateAddress: map['translateAddress'] == null ? null : map['translateAddress'] as String,
      translatePort: map['translatePort'] == null ? null : map['translatePort'] as String,
      vlans: map['vlans'] == null ? null : (map['vlans'] as List).cast<String>(),
      vlansEnabled: map['vlansEnabled'] == null ? null : map['vlansEnabled'] as bool,
    );
  }
}

