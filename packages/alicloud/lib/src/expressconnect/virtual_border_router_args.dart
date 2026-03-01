// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_virtual_border_router_virtual_border_router_args_doc}
/// The set of arguments for VirtualBorderRouter.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_virtual_border_router_virtual_border_router_args_doc}
class VirtualBorderRouterArgs {
  /// Field `associated_physical_connections` has been deprecated from provider version 1.263.0. Please use the resource `alicloud.expressconnect.VbrPconnAssociation` instead.
  final pulumi.Input<String>? associatedPhysicalConnections;
  /// The bandwidth of the VBR instance. Unit: Mbps. Valid values:
  /// - When creating a VBR instance for an exclusive leased line, the values are `50`, `100`, `200`, `300`, `400`, `500`, `1000`, `2048`, `5120`, `8192`, `10240`, `20480`, `40960`, `50120`, `61440`, and `102400`.
  /// - When creating a VBR instance for a shared line, you do not need to configure it. The bandwidth of the VBR is the bandwidth set when creating a shared physical line.
  final pulumi.Input<int>? bandwidth;
  /// The circuit code provided by the operator for the physical connection.
  final pulumi.Input<String>? circuitCode;
  /// The description information of the VBR.
  final pulumi.Input<String>? description;
  /// Multiple of detection time.
  /// That is the maximum number of connection packet losses allowed by the receiver to send messages, which is used to detect whether the link is normal.
  /// Valid values: `3` to `10`.
  final pulumi.Input<int>? detectMultiplier;
  /// Whether IPv6 is enabled.
  final pulumi.Input<bool>? enableIpv6;
  /// The IPv4 address on the Alibaba Cloud side of the VBR instance.
  final pulumi.Input<String> localGatewayIp;
  /// The IPv6 address on the Alibaba Cloud side of the VBR instance.
  final pulumi.Input<String>? localIpv6GatewayIp;
  /// Configure the receiving interval of BFD packets. Valid values: `200` to `1000`.
  final pulumi.Input<int>? minRxInterval;
  /// Configure the sending interval of BFD packets. Valid values: `200` to `1000`.
  final pulumi.Input<int>? minTxInterval;
  /// Maximum transmission unit.
  final pulumi.Input<int>? mtu;
  /// The IPv4 address of the client side of the VBR instance.
  final pulumi.Input<String> peerGatewayIp;
  /// The IPv6 address of the client side of the VBR instance.
  final pulumi.Input<String>? peerIpv6GatewayIp;
  /// The subnet masks of the Alibaba Cloud-side IPv6 and the customer-side IPv6 of The VBR instance.
  final pulumi.Input<String>? peeringIpv6SubnetMask;
  /// The subnet masks of the Alibaba Cloud-side IPv4 and the customer-side IPv4 of The VBR instance.
  final pulumi.Input<String> peeringSubnetMask;
  /// The ID of the physical connection to which the VBR belongs.
  final pulumi.Input<String> physicalConnectionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
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
  final pulumi.Input<int> vlanId;

  /// Creates a new [VirtualBorderRouterArgs].
  /// [associatedPhysicalConnections] Field `associated_physical_connections` has been deprecated from provider version 1.263.0. Please use the resource `alicloud.expressconnect.VbrPconnAssociation` instead.
  /// [bandwidth] The bandwidth of the VBR instance. Unit: Mbps. Valid values:
  /// [circuitCode] The circuit code provided by the operator for the physical connection.
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
  /// [sitelinkEnable] Whether to allow inter-IDC communication. Valid values: `true`, `false`.
  /// [status] The status of the VBR. Valid values: `active`, `terminated`.
  /// [tags] The tag of the resource.
  /// [vbrOwnerId] The account ID of the VBR instance owner. The default value is the logon Alibaba Cloud account ID.
  /// [virtualBorderRouterName] The name of the VBR instance.
  /// [vlanId] The VLAN ID of the VBR instance. Valid values: `0` to `2999`.
  VirtualBorderRouterArgs({
    String? associatedPhysicalConnections,
    int? bandwidth,
    String? circuitCode,
    String? description,
    int? detectMultiplier,
    bool? enableIpv6,
    required String localGatewayIp,
    String? localIpv6GatewayIp,
    int? minRxInterval,
    int? minTxInterval,
    int? mtu,
    required String peerGatewayIp,
    String? peerIpv6GatewayIp,
    String? peeringIpv6SubnetMask,
    required String peeringSubnetMask,
    required String physicalConnectionId,
    String? resourceGroupId,
    bool? sitelinkEnable,
    String? status,
    Map<String, String>? tags,
    String? vbrOwnerId,
    String? virtualBorderRouterName,
    required int vlanId,
  }) :
      associatedPhysicalConnections = pulumi.Input.asOptionalInput<String>(associatedPhysicalConnections),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      circuitCode = pulumi.Input.asOptionalInput<String>(circuitCode),
      description = pulumi.Input.asOptionalInput<String>(description),
      detectMultiplier = pulumi.Input.asOptionalInput<int>(detectMultiplier),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      localGatewayIp = pulumi.Input.asInput<String>(localGatewayIp),
      localIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(localIpv6GatewayIp),
      minRxInterval = pulumi.Input.asOptionalInput<int>(minRxInterval),
      minTxInterval = pulumi.Input.asOptionalInput<int>(minTxInterval),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      peerGatewayIp = pulumi.Input.asInput<String>(peerGatewayIp),
      peerIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(peerIpv6GatewayIp),
      peeringIpv6SubnetMask = pulumi.Input.asOptionalInput<String>(peeringIpv6SubnetMask),
      peeringSubnetMask = pulumi.Input.asInput<String>(peeringSubnetMask),
      physicalConnectionId = pulumi.Input.asInput<String>(physicalConnectionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sitelinkEnable = pulumi.Input.asOptionalInput<bool>(sitelinkEnable),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vbrOwnerId = pulumi.Input.asOptionalInput<String>(vbrOwnerId),
      virtualBorderRouterName = pulumi.Input.asOptionalInput<String>(virtualBorderRouterName),
      vlanId = pulumi.Input.asInput<int>(vlanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedPhysicalConnections': ?associatedPhysicalConnections,
      'bandwidth': ?bandwidth,
      'circuitCode': ?circuitCode,
      'description': ?description,
      'detectMultiplier': ?detectMultiplier,
      'enableIpv6': ?enableIpv6,
      'localGatewayIp': localGatewayIp,
      'localIpv6GatewayIp': ?localIpv6GatewayIp,
      'minRxInterval': ?minRxInterval,
      'minTxInterval': ?minTxInterval,
      'mtu': ?mtu,
      'peerGatewayIp': peerGatewayIp,
      'peerIpv6GatewayIp': ?peerIpv6GatewayIp,
      'peeringIpv6SubnetMask': ?peeringIpv6SubnetMask,
      'peeringSubnetMask': peeringSubnetMask,
      'physicalConnectionId': physicalConnectionId,
      'resourceGroupId': ?resourceGroupId,
      'sitelinkEnable': ?sitelinkEnable,
      'status': ?status,
      'tags': ?tags,
      'vbrOwnerId': ?vbrOwnerId,
      'virtualBorderRouterName': ?virtualBorderRouterName,
      'vlanId': vlanId,
    };
  }

  factory VirtualBorderRouterArgs.fromMap(Map<String, dynamic> map) {
    return VirtualBorderRouterArgs(
      associatedPhysicalConnections: map['associatedPhysicalConnections'] == null ? null : map['associatedPhysicalConnections'] as String,
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as int,
      circuitCode: map['circuitCode'] == null ? null : map['circuitCode'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      detectMultiplier: map['detectMultiplier'] == null ? null : map['detectMultiplier'] as int,
      enableIpv6: map['enableIpv6'] == null ? null : map['enableIpv6'] as bool,
      localGatewayIp: map['localGatewayIp'] as String,
      localIpv6GatewayIp: map['localIpv6GatewayIp'] == null ? null : map['localIpv6GatewayIp'] as String,
      minRxInterval: map['minRxInterval'] == null ? null : map['minRxInterval'] as int,
      minTxInterval: map['minTxInterval'] == null ? null : map['minTxInterval'] as int,
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      peerGatewayIp: map['peerGatewayIp'] as String,
      peerIpv6GatewayIp: map['peerIpv6GatewayIp'] == null ? null : map['peerIpv6GatewayIp'] as String,
      peeringIpv6SubnetMask: map['peeringIpv6SubnetMask'] == null ? null : map['peeringIpv6SubnetMask'] as String,
      peeringSubnetMask: map['peeringSubnetMask'] as String,
      physicalConnectionId: map['physicalConnectionId'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      sitelinkEnable: map['sitelinkEnable'] == null ? null : map['sitelinkEnable'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vbrOwnerId: map['vbrOwnerId'] == null ? null : map['vbrOwnerId'] as String,
      virtualBorderRouterName: map['virtualBorderRouterName'] == null ? null : map['virtualBorderRouterName'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}

