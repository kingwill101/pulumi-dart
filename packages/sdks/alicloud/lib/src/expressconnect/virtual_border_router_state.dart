// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualBorderRouter resources.
class VirtualBorderRouterState {
  /// Field `associated_physical_connections` has been deprecated from provider version 1.263.0. Please use the resource `alicloud.expressconnect.VbrPconnAssociation` instead.
  final pulumi.Input<String>? associatedPhysicalConnections;
  /// The bandwidth of the VBR instance. Unit: Mbps. Valid values:
  /// - When creating a VBR instance for an exclusive leased line, the values are `50`, `100`, `200`, `300`, `400`, `500`, `1000`, `2048`, `5120`, `8192`, `10240`, `20480`, `40960`, `50120`, `61440`, and `102400`.
  /// - When creating a VBR instance for a shared line, you do not need to configure it. The bandwidth of the VBR is the bandwidth set when creating a shared physical line.
  final pulumi.Input<int>? bandwidth;
  /// The circuit code provided by the operator for the physical connection.
  final pulumi.Input<String>? circuitCode;
  /// (Available since v1.263.0) The creation time of the VBR.
  final pulumi.Input<String>? createTime;
  /// The description information of the VBR.
  final pulumi.Input<String>? description;
  /// Multiple of detection time.
  /// That is the maximum number of connection packet losses allowed by the receiver to send messages, which is used to detect whether the link is normal.
  /// Valid values: `3` to `10`.
  final pulumi.Input<int>? detectMultiplier;
  /// Whether IPv6 is enabled.
  final pulumi.Input<bool>? enableIpv6;
  /// The IPv4 address on the Alibaba Cloud side of the VBR instance.
  final pulumi.Input<String>? localGatewayIp;
  /// The IPv6 address on the Alibaba Cloud side of the VBR instance.
  final pulumi.Input<String>? localIpv6GatewayIp;
  /// Configure the receiving interval of BFD packets. Valid values: `200` to `1000`.
  final pulumi.Input<int>? minRxInterval;
  /// Configure the sending interval of BFD packets. Valid values: `200` to `1000`.
  final pulumi.Input<int>? minTxInterval;
  /// Maximum transmission unit.
  final pulumi.Input<int>? mtu;
  /// The IPv4 address of the client side of the VBR instance.
  final pulumi.Input<String>? peerGatewayIp;
  /// The IPv6 address of the client side of the VBR instance.
  final pulumi.Input<String>? peerIpv6GatewayIp;
  /// The subnet masks of the Alibaba Cloud-side IPv6 and the customer-side IPv6 of The VBR instance.
  final pulumi.Input<String>? peeringIpv6SubnetMask;
  /// The subnet masks of the Alibaba Cloud-side IPv4 and the customer-side IPv4 of The VBR instance.
  final pulumi.Input<String>? peeringSubnetMask;
  /// The ID of the physical connection to which the VBR belongs.
  final pulumi.Input<String>? physicalConnectionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// (Available since v1.166.0) The Route Table ID Of the Virtual Border Router.
  final pulumi.Input<String>? routeTableId;
  /// Whether to allow inter-IDC communication. Valid values: `true`, `false`.
  final pulumi.Input<bool>? sitelinkEnable;
  /// The status of the VBR. Valid values: `active`, `terminated`.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The account ID of the VBR instance owner. The default value is the logon Alibaba Cloud account ID.
  final pulumi.Input<String>? vbrOwnerId;
  /// The name of the VBR instance.
  final pulumi.Input<String>? virtualBorderRouterName;
  /// The VLAN ID of the VBR instance. Valid values: `0` to `2999`.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [VirtualBorderRouterState].
  /// [associatedPhysicalConnections] Field `associated_physical_connections` has been deprecated from provider version 1.263.0. Please use the resource `alicloud.expressconnect.VbrPconnAssociation` instead.
  /// [bandwidth] The bandwidth of the VBR instance. Unit: Mbps. Valid values:
  /// [circuitCode] The circuit code provided by the operator for the physical connection.
  /// [createTime] (Available since v1.263.0) The creation time of the VBR.
  /// [description] The description information of the VBR.
  /// [detectMultiplier] Multiple of detection time.
  /// [enableIpv6] Whether IPv6 is enabled.
  /// [localGatewayIp] The IPv4 address on the Alibaba Cloud side of the VBR instance.
  /// [localIpv6GatewayIp] The IPv6 address on the Alibaba Cloud side of the VBR instance.
  /// [minRxInterval] Configure the receiving interval of BFD packets. Valid values: `200` to `1000`.
  /// [minTxInterval] Configure the sending interval of BFD packets. Valid values: `200` to `1000`.
  /// [mtu] Maximum transmission unit.
  /// [peerGatewayIp] The IPv4 address of the client side of the VBR instance.
  /// [peerIpv6GatewayIp] The IPv6 address of the client side of the VBR instance.
  /// [peeringIpv6SubnetMask] The subnet masks of the Alibaba Cloud-side IPv6 and the customer-side IPv6 of The VBR instance.
  /// [peeringSubnetMask] The subnet masks of the Alibaba Cloud-side IPv4 and the customer-side IPv4 of The VBR instance.
  /// [physicalConnectionId] The ID of the physical connection to which the VBR belongs.
  /// [resourceGroupId] The ID of the resource group.
  /// [routeTableId] (Available since v1.166.0) The Route Table ID Of the Virtual Border Router.
  /// [sitelinkEnable] Whether to allow inter-IDC communication. Valid values: `true`, `false`.
  /// [status] The status of the VBR. Valid values: `active`, `terminated`.
  /// [tags] The tag of the resource.
  /// [vbrOwnerId] The account ID of the VBR instance owner. The default value is the logon Alibaba Cloud account ID.
  /// [virtualBorderRouterName] The name of the VBR instance.
  /// [vlanId] The VLAN ID of the VBR instance. Valid values: `0` to `2999`.
  VirtualBorderRouterState({
    pulumi.Output<String>? associatedPhysicalConnections,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? circuitCode,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<int>? detectMultiplier,
    pulumi.Output<bool>? enableIpv6,
    pulumi.Output<String>? localGatewayIp,
    pulumi.Output<String>? localIpv6GatewayIp,
    pulumi.Output<int>? minRxInterval,
    pulumi.Output<int>? minTxInterval,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? peerGatewayIp,
    pulumi.Output<String>? peerIpv6GatewayIp,
    pulumi.Output<String>? peeringIpv6SubnetMask,
    pulumi.Output<String>? peeringSubnetMask,
    pulumi.Output<String>? physicalConnectionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<bool>? sitelinkEnable,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vbrOwnerId,
    pulumi.Output<String>? virtualBorderRouterName,
    pulumi.Output<int>? vlanId,
  }) :
      associatedPhysicalConnections = pulumi.Input.asOptionalInput<String>(associatedPhysicalConnections),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      circuitCode = pulumi.Input.asOptionalInput<String>(circuitCode),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      detectMultiplier = pulumi.Input.asOptionalInput<int>(detectMultiplier),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      localGatewayIp = pulumi.Input.asOptionalInput<String>(localGatewayIp),
      localIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(localIpv6GatewayIp),
      minRxInterval = pulumi.Input.asOptionalInput<int>(minRxInterval),
      minTxInterval = pulumi.Input.asOptionalInput<int>(minTxInterval),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      peerGatewayIp = pulumi.Input.asOptionalInput<String>(peerGatewayIp),
      peerIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(peerIpv6GatewayIp),
      peeringIpv6SubnetMask = pulumi.Input.asOptionalInput<String>(peeringIpv6SubnetMask),
      peeringSubnetMask = pulumi.Input.asOptionalInput<String>(peeringSubnetMask),
      physicalConnectionId = pulumi.Input.asOptionalInput<String>(physicalConnectionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      sitelinkEnable = pulumi.Input.asOptionalInput<bool>(sitelinkEnable),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vbrOwnerId = pulumi.Input.asOptionalInput<String>(vbrOwnerId),
      virtualBorderRouterName = pulumi.Input.asOptionalInput<String>(virtualBorderRouterName),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedPhysicalConnections': ?associatedPhysicalConnections,
      'bandwidth': ?bandwidth,
      'circuitCode': ?circuitCode,
      'createTime': ?createTime,
      'description': ?description,
      'detectMultiplier': ?detectMultiplier,
      'enableIpv6': ?enableIpv6,
      'localGatewayIp': ?localGatewayIp,
      'localIpv6GatewayIp': ?localIpv6GatewayIp,
      'minRxInterval': ?minRxInterval,
      'minTxInterval': ?minTxInterval,
      'mtu': ?mtu,
      'peerGatewayIp': ?peerGatewayIp,
      'peerIpv6GatewayIp': ?peerIpv6GatewayIp,
      'peeringIpv6SubnetMask': ?peeringIpv6SubnetMask,
      'peeringSubnetMask': ?peeringSubnetMask,
      'physicalConnectionId': ?physicalConnectionId,
      'resourceGroupId': ?resourceGroupId,
      'routeTableId': ?routeTableId,
      'sitelinkEnable': ?sitelinkEnable,
      'status': ?status,
      'tags': ?tags,
      'vbrOwnerId': ?vbrOwnerId,
      'virtualBorderRouterName': ?virtualBorderRouterName,
      'vlanId': ?vlanId,
    };
  }

  factory VirtualBorderRouterState.fromMap(Map<String, dynamic> map) {
    return VirtualBorderRouterState(
      associatedPhysicalConnections: map['associatedPhysicalConnections'] == null ? null : pulumi.Output.create<String>(map['associatedPhysicalConnections'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      circuitCode: map['circuitCode'] == null ? null : pulumi.Output.create<String>(map['circuitCode'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      detectMultiplier: map['detectMultiplier'] == null ? null : pulumi.Output.create<int>(map['detectMultiplier'] as int),
      enableIpv6: map['enableIpv6'] == null ? null : pulumi.Output.create<bool>(map['enableIpv6'] as bool),
      localGatewayIp: map['localGatewayIp'] == null ? null : pulumi.Output.create<String>(map['localGatewayIp'] as String),
      localIpv6GatewayIp: map['localIpv6GatewayIp'] == null ? null : pulumi.Output.create<String>(map['localIpv6GatewayIp'] as String),
      minRxInterval: map['minRxInterval'] == null ? null : pulumi.Output.create<int>(map['minRxInterval'] as int),
      minTxInterval: map['minTxInterval'] == null ? null : pulumi.Output.create<int>(map['minTxInterval'] as int),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      peerGatewayIp: map['peerGatewayIp'] == null ? null : pulumi.Output.create<String>(map['peerGatewayIp'] as String),
      peerIpv6GatewayIp: map['peerIpv6GatewayIp'] == null ? null : pulumi.Output.create<String>(map['peerIpv6GatewayIp'] as String),
      peeringIpv6SubnetMask: map['peeringIpv6SubnetMask'] == null ? null : pulumi.Output.create<String>(map['peeringIpv6SubnetMask'] as String),
      peeringSubnetMask: map['peeringSubnetMask'] == null ? null : pulumi.Output.create<String>(map['peeringSubnetMask'] as String),
      physicalConnectionId: map['physicalConnectionId'] == null ? null : pulumi.Output.create<String>(map['physicalConnectionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      sitelinkEnable: map['sitelinkEnable'] == null ? null : pulumi.Output.create<bool>(map['sitelinkEnable'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vbrOwnerId: map['vbrOwnerId'] == null ? null : pulumi.Output.create<String>(map['vbrOwnerId'] as String),
      virtualBorderRouterName: map['virtualBorderRouterName'] == null ? null : pulumi.Output.create<String>(map['virtualBorderRouterName'] as String),
      vlanId: map['vlanId'] == null ? null : pulumi.Output.create<int>(map['vlanId'] as int),
    );
  }
}

