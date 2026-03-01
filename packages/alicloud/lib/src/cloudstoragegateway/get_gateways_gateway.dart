// ignore_for_file: unused_element, unnecessary_cast


class GetGatewaysGateway {
  /// gateway .
  final String activatedTime;
  final String buyUrl;
  /// gateway category.
  final String category;
  /// gateway created timestamp in second format.
  final String createTime;
  /// gateway description.
  final String description;
  /// gateway ecs instance id.
  final String ecsInstanceId;
  /// gateway expiration status.
  final int expireStatus;
  /// gateway expiration timestamp in second format.
  final String expiredTime;
  /// gateway class.
  final String gatewayClass;
  /// gateway id.
  final String gatewayId;
  /// gateway name.
  final String gatewayName;
  /// gateway version.
  final String gatewayVersion;
  /// The ID of the Gateway.
  final String id;
  /// gateway service ip.
  final String innerIp;
  /// gateway public ip.
  final String ip;
  /// whether subscription gateway is released after expiration or not.
  final bool isReleaseAfterExpiration;
  /// gateway location.
  final String location;
  /// gateway payment type. The Payment type of gateway. The valid value: `PayAsYouGo`, `Subscription`.
  final String paymentType;
  /// gateway public network bandwidth.
  final int publicNetworkBandwidth;
  final String renewUrl;
  /// gateway status.
  final String status;
  /// storage bundle id.
  final String storageBundleId;
  /// gateway task id.
  final String taskId;
  /// gateway type.
  final String type;
  /// gateway vpc id.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;

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
      activatedTime: map['activatedTime'] as String,
      buyUrl: map['buyUrl'] as String,
      category: map['category'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      ecsInstanceId: map['ecsInstanceId'] as String,
      expireStatus: map['expireStatus'] as int,
      expiredTime: map['expiredTime'] as String,
      gatewayClass: map['gatewayClass'] as String,
      gatewayId: map['gatewayId'] as String,
      gatewayName: map['gatewayName'] as String,
      gatewayVersion: map['gatewayVersion'] as String,
      id: map['id'] as String,
      innerIp: map['innerIp'] as String,
      ip: map['ip'] as String,
      isReleaseAfterExpiration: map['isReleaseAfterExpiration'] as bool,
      location: map['location'] as String,
      paymentType: map['paymentType'] as String,
      publicNetworkBandwidth: map['publicNetworkBandwidth'] as int,
      renewUrl: map['renewUrl'] as String,
      status: map['status'] as String,
      storageBundleId: map['storageBundleId'] as String,
      taskId: map['taskId'] as String,
      type: map['type'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

