// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewaysGateway {
  /// gateway .
  final pulumi.Input<String> activatedTime;
  final pulumi.Input<String> buyUrl;

  /// gateway category.
  final pulumi.Input<String> category;

  /// gateway created timestamp in second format.
  final pulumi.Input<String> createTime;

  /// gateway description.
  final pulumi.Input<String> description;

  /// gateway ecs instance id.
  final pulumi.Input<String> ecsInstanceId;

  /// gateway expiration status.
  final pulumi.Input<int> expireStatus;

  /// gateway expiration timestamp in second format.
  final pulumi.Input<String> expiredTime;

  /// gateway class.
  final pulumi.Input<String> gatewayClass;

  /// gateway id.
  final pulumi.Input<String> gatewayId;

  /// gateway name.
  final pulumi.Input<String> gatewayName;

  /// gateway version.
  final pulumi.Input<String> gatewayVersion;

  /// The ID of the Gateway.
  final pulumi.Input<String> id;

  /// gateway service ip.
  final pulumi.Input<String> innerIp;

  /// gateway public ip.
  final pulumi.Input<String> ip;

  /// whether subscription gateway is released after expiration or not.
  final pulumi.Input<bool> isReleaseAfterExpiration;

  /// gateway location.
  final pulumi.Input<String> location;

  /// gateway payment type. The Payment type of gateway. The valid value: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String> paymentType;

  /// gateway public network bandwidth.
  final pulumi.Input<int> publicNetworkBandwidth;
  final pulumi.Input<String> renewUrl;

  /// gateway status.
  final pulumi.Input<String> status;

  /// storage bundle id.
  final pulumi.Input<String> storageBundleId;

  /// gateway task id.
  final pulumi.Input<String> taskId;

  /// gateway type.
  final pulumi.Input<String> type;

  /// gateway vpc id.
  final pulumi.Input<String> vpcId;

  /// The vswitch id.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetGatewaysGateway].
  /// [activatedTime] gateway .
  /// [buyUrl] Required.
  /// [category] gateway category.
  /// [createTime] gateway created timestamp in second format.
  /// [description] gateway description.
  /// [ecsInstanceId] gateway ecs instance id.
  /// [expireStatus] gateway expiration status.
  /// [expiredTime] gateway expiration timestamp in second format.
  /// [gatewayClass] gateway class.
  /// [gatewayId] gateway id.
  /// [gatewayName] gateway name.
  /// [gatewayVersion] gateway version.
  /// [id] The ID of the Gateway.
  /// [innerIp] gateway service ip.
  /// [ip] gateway public ip.
  /// [isReleaseAfterExpiration] whether subscription gateway is released after expiration or not.
  /// [location] gateway location.
  /// [paymentType] gateway payment type. The Payment type of gateway. The valid value: `PayAsYouGo`, `Subscription`.
  /// [publicNetworkBandwidth] gateway public network bandwidth.
  /// [renewUrl] Required.
  /// [status] gateway status.
  /// [storageBundleId] storage bundle id.
  /// [taskId] gateway task id.
  /// [type] gateway type.
  /// [vpcId] gateway vpc id.
  /// [vswitchId] The vswitch id.
  GetGatewaysGateway({
    required this.activatedTime,
    required this.buyUrl,
    required this.category,
    required this.createTime,
    required this.description,
    required this.ecsInstanceId,
    required this.expireStatus,
    required this.expiredTime,
    required this.gatewayClass,
    required this.gatewayId,
    required this.gatewayName,
    required this.gatewayVersion,
    required this.id,
    required this.innerIp,
    required this.ip,
    required this.isReleaseAfterExpiration,
    required this.location,
    required this.paymentType,
    required this.publicNetworkBandwidth,
    required this.renewUrl,
    required this.status,
    required this.storageBundleId,
    required this.taskId,
    required this.type,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedTime': activatedTime,
      'buyUrl': buyUrl,
      'category': category,
      'createTime': createTime,
      'description': description,
      'ecsInstanceId': ecsInstanceId,
      'expireStatus': expireStatus,
      'expiredTime': expiredTime,
      'gatewayClass': gatewayClass,
      'gatewayId': gatewayId,
      'gatewayName': gatewayName,
      'gatewayVersion': gatewayVersion,
      'id': id,
      'innerIp': innerIp,
      'ip': ip,
      'isReleaseAfterExpiration': isReleaseAfterExpiration,
      'location': location,
      'paymentType': paymentType,
      'publicNetworkBandwidth': publicNetworkBandwidth,
      'renewUrl': renewUrl,
      'status': status,
      'storageBundleId': storageBundleId,
      'taskId': taskId,
      'type': type,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetGatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetGatewaysGateway(
      activatedTime: pulumi.Input.fromValue(map['activatedTime'] as String),
      buyUrl: pulumi.Input.fromValue(map['buyUrl'] as String),
      category: pulumi.Input.fromValue(map['category'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      ecsInstanceId: pulumi.Input.fromValue(map['ecsInstanceId'] as String),
      expireStatus: pulumi.Input.fromValue(map['expireStatus'] as int),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      gatewayClass: pulumi.Input.fromValue(map['gatewayClass'] as String),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      gatewayVersion: pulumi.Input.fromValue(map['gatewayVersion'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      innerIp: pulumi.Input.fromValue(map['innerIp'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      isReleaseAfterExpiration: pulumi.Input.fromValue(
        map['isReleaseAfterExpiration'] as bool,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      publicNetworkBandwidth: pulumi.Input.fromValue(
        map['publicNetworkBandwidth'] as int,
      ),
      renewUrl: pulumi.Input.fromValue(map['renewUrl'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageBundleId: pulumi.Input.fromValue(map['storageBundleId'] as String),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}
