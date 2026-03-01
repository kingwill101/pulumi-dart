// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_port_ids_get_port_ids_args_doc}
/// Arguments for getPortIds.
/// {@endtemplate}
/// {@macro pulumi_networking_get_port_ids_get_port_ids_args_doc}
class GetPortIdsArgs {
  /// The administrative state of the port.
  final pulumi.Input<bool>? adminStateUp;
  /// Human-readable description of the port.
  final pulumi.Input<String>? description;
  /// The ID of the device the port belongs to.
  final pulumi.Input<String>? deviceId;
  /// The device owner of the port.
  final pulumi.Input<String>? deviceOwner;
  final pulumi.Input<String>? dnsName;
  /// The port IP address filter.
  final pulumi.Input<String>? fixedIp;
  /// The MAC address of the port.
  final pulumi.Input<String>? macAddress;
  /// The name of the port.
  final pulumi.Input<String>? name;
  /// The ID of the network the port belongs to.
  final pulumi.Input<String>? networkId;
  /// The owner of the port.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve port ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The list of port security group IDs to filter.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Order the results in either `asc` or `desc`.
  /// Defaults to none.
  final pulumi.Input<String>? sortDirection;
  /// Sort ports based on a certain key. Defaults to none.
  final pulumi.Input<String>? sortKey;
  /// The status of the port.
  final pulumi.Input<String>? status;
  /// The list of port tags to filter.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetPortIdsArgs].
  /// [adminStateUp] The administrative state of the port.
  /// [description] Human-readable description of the port.
  /// [deviceId] The ID of the device the port belongs to.
  /// [deviceOwner] The device owner of the port.
  /// [dnsName] Optional.
  /// [fixedIp] The port IP address filter.
  /// [macAddress] The MAC address of the port.
  /// [name] The name of the port.
  /// [networkId] The ID of the network the port belongs to.
  /// [projectId] The owner of the port.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [securityGroupIds] The list of port security group IDs to filter.
  /// [sortDirection] Order the results in either `asc` or `desc`.
  /// [sortKey] Sort ports based on a certain key. Defaults to none.
  /// [status] The status of the port.
  /// [tags] The list of port tags to filter.
  /// [tenantId] Optional.
  GetPortIdsArgs({
    bool? adminStateUp,
    String? description,
    String? deviceId,
    String? deviceOwner,
    String? dnsName,
    String? fixedIp,
    String? macAddress,
    String? name,
    String? networkId,
    String? projectId,
    String? region,
    List<String>? securityGroupIds,
    String? sortDirection,
    String? sortKey,
    String? status,
    List<String>? tags,
    String? tenantId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      deviceOwner = pulumi.Input.asOptionalInput<String>(deviceOwner),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      fixedIp = pulumi.Input.asOptionalInput<String>(fixedIp),
      macAddress = pulumi.Input.asOptionalInput<String>(macAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      sortDirection = pulumi.Input.asOptionalInput<String>(sortDirection),
      sortKey = pulumi.Input.asOptionalInput<String>(sortKey),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'deviceId': ?deviceId,
      'deviceOwner': ?deviceOwner,
      'dnsName': ?dnsName,
      'fixedIp': ?fixedIp,
      'macAddress': ?macAddress,
      'name': ?name,
      'networkId': ?networkId,
      'projectId': ?projectId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'sortDirection': ?sortDirection,
      'sortKey': ?sortKey,
      'status': ?status,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetPortIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetPortIdsArgs(
      adminStateUp: map['adminStateUp'] == null ? null : map['adminStateUp'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      deviceOwner: map['deviceOwner'] == null ? null : map['deviceOwner'] as String,
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      fixedIp: map['fixedIp'] == null ? null : map['fixedIp'] as String,
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      sortDirection: map['sortDirection'] == null ? null : map['sortDirection'] as String,
      sortKey: map['sortKey'] == null ? null : map['sortKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

