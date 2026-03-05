// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The internal HTTP endpoint for the Message Queue for Apache RocketMQ instance.
  final pulumi.Input<String> httpInternalEndpoint;
  /// The public HTTP endpoint for the Message Queue for Apache RocketMQ instance.
  final pulumi.Input<String> httpInternetEndpoint;
  /// The public HTTPS endpoint for the Message Queue for Apache RocketMQ instance.
  final pulumi.Input<String> httpInternetSecureEndpoint;
  /// ID of the instance.
  final pulumi.Input<String> id;
  /// Indicates whether any namespace is configured for the Message Queue for Apache RocketMQ instance.
  final pulumi.Input<bool> independentNaming;
  /// ID of the instance.
  final pulumi.Input<String> instanceId;
  /// Name of the instance.
  final pulumi.Input<String> instanceName;
  /// The status of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  final pulumi.Input<int> instanceStatus;
  /// The type of the instance. Read [Fields in InstanceVO](https://www.alibabacloud.com/help/doc-detail/106351.html) for further details.
  final pulumi.Input<int> instanceType;
  /// The automatic release time of an Enterprise Platinum Edition instance.
  final pulumi.Input<String> releaseTime;
  /// This attribute is a concise description of instance.
  final pulumi.Input<String> remark;
  /// The status of Ons instance. Valid values: `0` deploying, `2` arrears, `5` running, `7` upgrading.
  final pulumi.Input<int> status;
  /// A map of tags assigned to the Ons instance.
  final pulumi.Input<Map<String, String>> tags;
  /// The TCP endpoint for the Message Queue for Apache RocketMQ instance.
  final pulumi.Input<String> tcpEndpoint;

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
      httpInternalEndpoint: pulumi.Input.fromValue(map['httpInternalEndpoint'] as String),
      httpInternetEndpoint: pulumi.Input.fromValue(map['httpInternetEndpoint'] as String),
      httpInternetSecureEndpoint: pulumi.Input.fromValue(map['httpInternetSecureEndpoint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      independentNaming: pulumi.Input.fromValue(map['independentNaming'] as bool),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instanceStatus: pulumi.Input.fromValue(map['instanceStatus'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as int),
      releaseTime: pulumi.Input.fromValue(map['releaseTime'] as String),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      status: pulumi.Input.fromValue(map['status'] as int),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      tcpEndpoint: pulumi.Input.fromValue(map['tcpEndpoint'] as String),
    );
  }
}

