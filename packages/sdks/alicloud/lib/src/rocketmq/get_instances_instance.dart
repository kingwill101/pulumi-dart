// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The internal HTTP endpoint for the Message Queue for Apache RocketMQ instance.
  final String httpInternalEndpoint;
  /// The public HTTP endpoint for the Message Queue for Apache RocketMQ instance.
  final String httpInternetEndpoint;
  /// The public HTTPS endpoint for the Message Queue for Apache RocketMQ instance.
  final String httpInternetSecureEndpoint;
  /// ID of the instance.
  final String id;
  /// Indicates whether any namespace is configured for the Message Queue for Apache RocketMQ instance.
  final bool independentNaming;
  /// ID of the instance.
  final String instanceId;
  /// Name of the instance.
  final String instanceName;
  /// The status of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  final int instanceStatus;
  /// The type of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  final int instanceType;
  /// The automatic release time of an Enterprise Platinum Edition instance.
  final String releaseTime;
  /// This attribute is a concise description of instance.
  final String remark;
  /// The status of Ons instance. Valid values: `0` deploying, `2` arrears, `5` running, `7` upgrading.
  final int status;
  /// A map of tags assigned to the Ons instance.
  final Map<String, String> tags;
  /// The TCP endpoint for the Message Queue for Apache RocketMQ instance.
  final String tcpEndpoint;

  /// Creates a new [GetInstancesInstance].
  /// [httpInternalEndpoint] The internal HTTP endpoint for the Message Queue for Apache RocketMQ instance.
  /// [httpInternetEndpoint] The public HTTP endpoint for the Message Queue for Apache RocketMQ instance.
  /// [httpInternetSecureEndpoint] The public HTTPS endpoint for the Message Queue for Apache RocketMQ instance.
  /// [id] ID of the instance.
  /// [independentNaming] Indicates whether any namespace is configured for the Message Queue for Apache RocketMQ instance.
  /// [instanceId] ID of the instance.
  /// [instanceName] Name of the instance.
  /// [instanceStatus] The status of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  /// [instanceType] The type of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  /// [releaseTime] The automatic release time of an Enterprise Platinum Edition instance.
  /// [remark] This attribute is a concise description of instance.
  /// [status] The status of Ons instance. Valid values: `0` deploying, `2` arrears, `5` running, `7` upgrading.
  /// [tags] A map of tags assigned to the Ons instance.
  /// [tcpEndpoint] The TCP endpoint for the Message Queue for Apache RocketMQ instance.
  GetInstancesInstance({
    required this.httpInternalEndpoint,
    required this.httpInternetEndpoint,
    required this.httpInternetSecureEndpoint,
    required this.id,
    required this.independentNaming,
    required this.instanceId,
    required this.instanceName,
    required this.instanceStatus,
    required this.instanceType,
    required this.releaseTime,
    required this.remark,
    required this.status,
    required this.tags,
    required this.tcpEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpInternalEndpoint': httpInternalEndpoint,
      'httpInternetEndpoint': httpInternetEndpoint,
      'httpInternetSecureEndpoint': httpInternetSecureEndpoint,
      'id': id,
      'independentNaming': independentNaming,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceStatus': instanceStatus,
      'instanceType': instanceType,
      'releaseTime': releaseTime,
      'remark': remark,
      'status': status,
      'tags': tags,
      'tcpEndpoint': tcpEndpoint,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      httpInternalEndpoint: map['httpInternalEndpoint'] as String,
      httpInternetEndpoint: map['httpInternetEndpoint'] as String,
      httpInternetSecureEndpoint: map['httpInternetSecureEndpoint'] as String,
      id: map['id'] as String,
      independentNaming: map['independentNaming'] as bool,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      instanceStatus: map['instanceStatus'] as int,
      instanceType: map['instanceType'] as int,
      releaseTime: map['releaseTime'] as String,
      remark: map['remark'] as String,
      status: map['status'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      tcpEndpoint: map['tcpEndpoint'] as String,
    );
  }
}

