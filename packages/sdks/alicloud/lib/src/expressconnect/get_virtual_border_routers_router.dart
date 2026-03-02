// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualBorderRoutersRouter {
  /// The physical leased line access point ID.
  final pulumi.Input<String> accessPointId;
  /// The first activation time of VBR.
  final pulumi.Input<String> activationTime;
  /// Operators for physical connection circuit provided coding.
  final pulumi.Input<String> circuitCode;
  /// Box Instance Id.
  final pulumi.Input<String> cloudBoxInstanceId;
  /// The representative of the creation time resources attribute field.
  final pulumi.Input<String> createTime;
  /// The description of VBR. Length is from 2 to 256 characters, must start with a letter or the Chinese at the beginning, but not at the http:// Or https:// at the beginning.
  final pulumi.Input<String> description;
  /// Detection time multiplier that recipient allows the sender to send a message of the maximum allowable connections for the number of packets, used to detect whether the link normal. Value: 3~10.
  final pulumi.Input<int> detectMultiplier;
  /// High Speed Migration Service Instance Id.
  final pulumi.Input<String> eccId;
  /// Whether to Enable IPv6.
  final pulumi.Input<bool> enableIpv6;
  /// The ID of the Virtual Border Router.
  final pulumi.Input<String> id;
  /// Alibaba Cloud-Connected IPv4 address.
  final pulumi.Input<String> localGatewayIp;
  /// Alibaba Cloud-Connected IPv6 Address.
  final pulumi.Input<String> localIpv6GatewayIp;
  /// Configure BFD packet reception interval of values include: 200~1000, unit: ms.
  final pulumi.Input<int> minRxInterval;
  /// Configure BFD packet transmission interval maximum value: 200~1000, unit: ms.
  final pulumi.Input<int> minTxInterval;
  /// The Billing of the Extended Time.
  final pulumi.Input<String> paymentVbrExpireTime;
  /// The Client-Side Interconnection IPv4 Address.
  final pulumi.Input<String> peerGatewayIp;
  /// The Client-Side Interconnection IPv6 Address.
  final pulumi.Input<String> peerIpv6GatewayIp;
  /// Alibaba Cloud-Connected IPv6 with Client-Side Interconnection IPv6 of Subnet Mask.
  final pulumi.Input<String> peeringIpv6SubnetMask;
  /// Alibaba Cloud-Connected IPv4 and Client-Side Interconnection IPv4 of Subnet Mask.
  final pulumi.Input<String> peeringSubnetMask;
  /// Physical Private Line Service Status Value Normal: Normal, financiallocked: If You Lock.
  final pulumi.Input<String> physicalConnectionBusinessStatus;
  /// The ID of the Physical Connection to Which the ID.
  final pulumi.Input<String> physicalConnectionId;
  /// Physical Private Line Where the Account ID.
  final pulumi.Input<String> physicalConnectionOwnerUid;
  /// Physical Private Line State.
  final pulumi.Input<String> physicalConnectionStatus;
  /// The Last from a Terminated State to the Active State of the Time.
  final pulumi.Input<String> recoveryTime;
  /// Route Table ID.
  final pulumi.Input<String> routeTableId;
  /// The VBR state.
  final pulumi.Input<String> status;
  /// The Most Recent Was Aborted by the Time.
  final pulumi.Input<String> terminationTime;
  /// VBR Type.
  final pulumi.Input<String> type;
  /// The VBR ID.
  final pulumi.Input<String> virtualBorderRouterId;
  /// The name of VBR. Length is from 2 to 128 characters, must start with a letter or the Chinese at the beginning can contain numbers, the underscore character (_) and dash (-). But do not start with http:// or https:// at the beginning.
  final pulumi.Input<String> virtualBorderRouterName;
  /// The VLAN ID of the VBR. Value range: 0~2999.
  final pulumi.Input<int> vlanId;
  /// The ID of the Router Interface.
  final pulumi.Input<String> vlanInterfaceId;

  /// Creates a new [GetVirtualBorderRoutersRouter].
  /// [accessPointId] The physical leased line access point ID.
  /// [activationTime] The first activation time of VBR.
  /// [circuitCode] Operators for physical connection circuit provided coding.
  /// [cloudBoxInstanceId] Box Instance Id.
  /// [createTime] The representative of the creation time resources attribute field.
  /// [description] The description of VBR. Length is from 2 to 256 characters, must start with a letter or the Chinese at the beginning, but not at the http:// Or https:// at the beginning.
  /// [detectMultiplier] Detection time multiplier that recipient allows the sender to send a message of the maximum allowable connections for the number of packets, used to detect whether the link normal. Value: 3~10.
  /// [eccId] High Speed Migration Service Instance Id.
  /// [enableIpv6] Whether to Enable IPv6.
  /// [id] The ID of the Virtual Border Router.
  /// [localGatewayIp] Alibaba Cloud-Connected IPv4 address.
  /// [localIpv6GatewayIp] Alibaba Cloud-Connected IPv6 Address.
  /// [minRxInterval] Configure BFD packet reception interval of values include: 200~1000, unit: ms.
  /// [minTxInterval] Configure BFD packet transmission interval maximum value: 200~1000, unit: ms.
  /// [paymentVbrExpireTime] The Billing of the Extended Time.
  /// [peerGatewayIp] The Client-Side Interconnection IPv4 Address.
  /// [peerIpv6GatewayIp] The Client-Side Interconnection IPv6 Address.
  /// [peeringIpv6SubnetMask] Alibaba Cloud-Connected IPv6 with Client-Side Interconnection IPv6 of Subnet Mask.
  /// [peeringSubnetMask] Alibaba Cloud-Connected IPv4 and Client-Side Interconnection IPv4 of Subnet Mask.
  /// [physicalConnectionBusinessStatus] Physical Private Line Service Status Value Normal: Normal, financiallocked: If You Lock.
  /// [physicalConnectionId] The ID of the Physical Connection to Which the ID.
  /// [physicalConnectionOwnerUid] Physical Private Line Where the Account ID.
  /// [physicalConnectionStatus] Physical Private Line State.
  /// [recoveryTime] The Last from a Terminated State to the Active State of the Time.
  /// [routeTableId] Route Table ID.
  /// [status] The VBR state.
  /// [terminationTime] The Most Recent Was Aborted by the Time.
  /// [type] VBR Type.
  /// [virtualBorderRouterId] The VBR ID.
  /// [virtualBorderRouterName] The name of VBR. Length is from 2 to 128 characters, must start with a letter or the Chinese at the beginning can contain numbers, the underscore character (_) and dash (-). But do not start with http:// or https:// at the beginning.
  /// [vlanId] The VLAN ID of the VBR. Value range: 0~2999.
  /// [vlanInterfaceId] The ID of the Router Interface.
  GetVirtualBorderRoutersRouter({
    required this.accessPointId,
    required this.activationTime,
    required this.circuitCode,
    required this.cloudBoxInstanceId,
    required this.createTime,
    required this.description,
    required this.detectMultiplier,
    required this.eccId,
    required this.enableIpv6,
    required this.id,
    required this.localGatewayIp,
    required this.localIpv6GatewayIp,
    required this.minRxInterval,
    required this.minTxInterval,
    required this.paymentVbrExpireTime,
    required this.peerGatewayIp,
    required this.peerIpv6GatewayIp,
    required this.peeringIpv6SubnetMask,
    required this.peeringSubnetMask,
    required this.physicalConnectionBusinessStatus,
    required this.physicalConnectionId,
    required this.physicalConnectionOwnerUid,
    required this.physicalConnectionStatus,
    required this.recoveryTime,
    required this.routeTableId,
    required this.status,
    required this.terminationTime,
    required this.type,
    required this.virtualBorderRouterId,
    required this.virtualBorderRouterName,
    required this.vlanId,
    required this.vlanInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointId': accessPointId,
      'activationTime': activationTime,
      'circuitCode': circuitCode,
      'cloudBoxInstanceId': cloudBoxInstanceId,
      'createTime': createTime,
      'description': description,
      'detectMultiplier': detectMultiplier,
      'eccId': eccId,
      'enableIpv6': enableIpv6,
      'id': id,
      'localGatewayIp': localGatewayIp,
      'localIpv6GatewayIp': localIpv6GatewayIp,
      'minRxInterval': minRxInterval,
      'minTxInterval': minTxInterval,
      'paymentVbrExpireTime': paymentVbrExpireTime,
      'peerGatewayIp': peerGatewayIp,
      'peerIpv6GatewayIp': peerIpv6GatewayIp,
      'peeringIpv6SubnetMask': peeringIpv6SubnetMask,
      'peeringSubnetMask': peeringSubnetMask,
      'physicalConnectionBusinessStatus': physicalConnectionBusinessStatus,
      'physicalConnectionId': physicalConnectionId,
      'physicalConnectionOwnerUid': physicalConnectionOwnerUid,
      'physicalConnectionStatus': physicalConnectionStatus,
      'recoveryTime': recoveryTime,
      'routeTableId': routeTableId,
      'status': status,
      'terminationTime': terminationTime,
      'type': type,
      'virtualBorderRouterId': virtualBorderRouterId,
      'virtualBorderRouterName': virtualBorderRouterName,
      'vlanId': vlanId,
      'vlanInterfaceId': vlanInterfaceId,
    };
  }

  factory GetVirtualBorderRoutersRouter.fromMap(Map<String, dynamic> map) {
    return GetVirtualBorderRoutersRouter(
      accessPointId: (map['accessPointId'] as String).input(),
      activationTime: (map['activationTime'] as String).input(),
      circuitCode: (map['circuitCode'] as String).input(),
      cloudBoxInstanceId: (map['cloudBoxInstanceId'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      detectMultiplier: (map['detectMultiplier'] as int).input(),
      eccId: (map['eccId'] as String).input(),
      enableIpv6: (map['enableIpv6'] as bool).input(),
      id: (map['id'] as String).input(),
      localGatewayIp: (map['localGatewayIp'] as String).input(),
      localIpv6GatewayIp: (map['localIpv6GatewayIp'] as String).input(),
      minRxInterval: (map['minRxInterval'] as int).input(),
      minTxInterval: (map['minTxInterval'] as int).input(),
      paymentVbrExpireTime: (map['paymentVbrExpireTime'] as String).input(),
      peerGatewayIp: (map['peerGatewayIp'] as String).input(),
      peerIpv6GatewayIp: (map['peerIpv6GatewayIp'] as String).input(),
      peeringIpv6SubnetMask: (map['peeringIpv6SubnetMask'] as String).input(),
      peeringSubnetMask: (map['peeringSubnetMask'] as String).input(),
      physicalConnectionBusinessStatus: (map['physicalConnectionBusinessStatus'] as String).input(),
      physicalConnectionId: (map['physicalConnectionId'] as String).input(),
      physicalConnectionOwnerUid: (map['physicalConnectionOwnerUid'] as String).input(),
      physicalConnectionStatus: (map['physicalConnectionStatus'] as String).input(),
      recoveryTime: (map['recoveryTime'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
      status: (map['status'] as String).input(),
      terminationTime: (map['terminationTime'] as String).input(),
      type: (map['type'] as String).input(),
      virtualBorderRouterId: (map['virtualBorderRouterId'] as String).input(),
      virtualBorderRouterName: (map['virtualBorderRouterName'] as String).input(),
      vlanId: (map['vlanId'] as int).input(),
      vlanInterfaceId: (map['vlanInterfaceId'] as String).input(),
    );
  }
}

