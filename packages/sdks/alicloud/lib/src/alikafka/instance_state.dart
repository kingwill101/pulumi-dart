// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_confluent_config.dart';
import 'instance_serverless_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The initial configurations of the ApsaraMQ for Kafka instance. The values must be valid JSON strings.
  final pulumi.Input<String>? config;
  /// The configurations of Confluent. See `confluent_config` below.
  /// > **NOTE:** If `instance_type` is set to `alikafka_confluent`, `confluent_config` is required.
  final pulumi.Input<InstanceConfluentConfig>? confluentConfig;
  /// The number of partitions in a topic that is automatically created.
  final pulumi.Input<int>? defaultTopicPartitionNum;
  /// The deployment type of the instance. **NOTE:** From version 1.161.0, this attribute supports to be updated. Valid values:
  final pulumi.Input<int>? deployType;
  /// The disk size of the instance. When modify this value, it only supports adjust to a greater value.
  /// > **NOTE:** If `instance_type` is set to `alikafka`, `disk_size` is required.
  final pulumi.Input<int>? diskSize;
  /// The disk type of the instance. Valid values:
  final pulumi.Input<int>? diskType;
  /// (Available since v1.234.0) The default endpoint of the instance in domain name mode.
  final pulumi.Input<String>? domainEndpoint;
  /// The max bandwidth of the instance. It will be ignored when `deploy_type = 5`. When modify this value, it only supports adjust to a greater value.
  final pulumi.Input<int>? eipMax;
  /// Specify whether to enable the flexible group creation feature. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enableAutoGroup;
  /// Specify whether to enable the automatic topic creation feature. Default value: `disable`. Valid values:
  final pulumi.Input<String>? enableAutoTopic;
  /// The EndPoint to access the kafka instance.
  final pulumi.Input<String>? endPoint;
  /// (Available since v1.214.1) The number of available groups.
  final pulumi.Input<int>? groupLeft;
  /// (Available since v1.214.1) The number of used groups.
  final pulumi.Input<int>? groupUsed;
  /// The type of the Instance. Default value: `alikafka`. Valid values:
  final pulumi.Input<String>? instanceType;
  /// The max value of io of the instance. When modify this value, it only support adjust to a greater value.
  final pulumi.Input<int>? ioMax;
  /// The traffic specification of the instance. We recommend that you configure this parameter.
  /// - You should specify one of the `io_max` and `io_max_spec` parameters, and `io_max_spec` is recommended.
  /// - For more information about the valid values, see [Billing](https://www.alibabacloud.com/help/en/message-queue-for-apache-kafka/latest/billing-overview).
  final pulumi.Input<String>? ioMaxSpec;
  /// (Available since v1.214.1) The method that you use to purchase partitions.
  final pulumi.Input<int>? isPartitionBuy;
  /// The ID of the key that is used to encrypt data on standard SSDs in the region of the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-updateinstanceconfig).
  final pulumi.Input<String>? kmsKeyId;
  /// Name of your Kafka instance. The length should between 3 and 64 characters. If not set, will use instance id as instance name.
  final pulumi.Input<String>? name;
  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PostPaid`, `PrePaid`. When modify this value, it only support adjust from `PostPaid` to `PrePaid`.
  final pulumi.Input<String>? paidType;
  /// (Available since v1.214.1) The number of available partitions.
  final pulumi.Input<int>? partitionLeft;
  /// The number of partitions.
  final pulumi.Input<int>? partitionNum;
  /// (Available since v1.214.1) The number of used partitions.
  final pulumi.Input<int>? partitionUsed;
  /// The instance password. **NOTE:** If `instance_type` is set to `alikafka_confluent`, `password` is required.
  final pulumi.Input<String>? password;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;
  /// (Available since v1.234.0) The Simple Authentication and Security Layer (SASL) endpoint of the instance in domain name mode.
  final pulumi.Input<String>? saslDomainEndpoint;
  /// The ID of security group for this instance. If the security group is empty, system will create a default one.
  final pulumi.Input<String>? securityGroup;
  /// The zones among which you want to deploy the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-startinstance).
  final pulumi.Input<List<String>>? selectedZones;
  /// The parameters configured for the serverless ApsaraMQ for Kafka instance. See `serverless_config` below.
  /// > **NOTE:** If `instance_type` is set to `alikafka_serverless`, `serverless_config` is required.
  final pulumi.Input<InstanceServerlessConfig>? serverlessConfig;
  /// The version of the Instance. Valid values:
  /// - If `instance_type` is set to `alikafka`. Default value: `2.2.0`. Valid values: `2.2.0`, `2.6.2`.
  /// - If `instance_type` is set to `alikafka_serverless`. Default value: `3.3.1`. Valid values: `3.3.1`.
  /// - If `instance_type` is set to `alikafka_confluent`. Default value: `7.4.0`. Valid values: `7.4.0`.
  final pulumi.Input<String>? serviceVersion;
  /// The instance edition. Default value: `normal`. Valid values:
  /// - If `instance_type` is set to `alikafka`. Valid values: `normal`, `professional`, `professionalForHighRead`.
  /// - If `instance_type` is set to `alikafka_serverless`. Valid values: `normal`.
  /// - If `instance_type` is set to `alikafka_confluent`. Valid values: `professional`, `enterprise`.
  final pulumi.Input<String>? specType;
  /// (Available since v1.234.0) The SSL endpoint of the instance in domain name mode.
  final pulumi.Input<String>? sslDomainEndpoint;
  /// (Available since v1.234.0) The Secure Sockets Layer (SSL) endpoint of the instance in IP address mode.
  final pulumi.Input<String>? sslEndpoint;
  /// The status of the instance.
  final pulumi.Input<int>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// (Available since v1.214.1) The number of available topics.
  final pulumi.Input<int>? topicLeft;
  /// (Available since v1.214.1) The number of purchased topics.
  final pulumi.Input<int>? topicNumOfBuy;
  /// The max num of topic can be creation of the instance.
  /// It has been deprecated since version 1.194.0 and using `partition_num` instead.
  /// Currently, its value only can be set to 50 when creating it, and finally depends on `partition_num` value: <`topic_quota`> = 1000 + <`partition_num`>.
  /// Therefore, you can update it by updating the `partition_num`, and it is the only updating path.
  final pulumi.Input<int>? topicQuota;
  /// (Available since v1.214.1) The number of used topics.
  final pulumi.Input<int>? topicUsed;
  /// The VPC ID of the instance.
  final pulumi.Input<String>? vpcId;
  /// The ID of attaching vswitch to instance.
  final pulumi.Input<String>? vswitchId;
  /// The IDs of the vSwitches with which the instance is associated.
  /// > **NOTE:** If `instance_type` is set to `alikafka` or `alikafka_serverless`, `vswitch_ids` is required. When `instance_type` is set to `alikafka_confluent`, you must specify at least one of the `vswitch_id` and `vswitch_ids`, and if you specify both `vswitch_id` and `vswitch_ids`, only the `vswitch_ids` takes effect.
  final pulumi.Input<List<String>>? vswitchIds;
  /// The zone ID of the instance. The value can be in zone x or region id-x format. **NOTE**: When the available zone is insufficient, another availability zone may be deployed.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceState].
  /// [config] The initial configurations of the ApsaraMQ for Kafka instance. The values must be valid JSON strings.
  /// [confluentConfig] The configurations of Confluent. See `confluent_config` below.
  /// [defaultTopicPartitionNum] The number of partitions in a topic that is automatically created.
  /// [deployType] The deployment type of the instance. **NOTE:** From version 1.161.0, this attribute supports to be updated. Valid values:
  /// [diskSize] The disk size of the instance. When modify this value, it only supports adjust to a greater value.
  /// [diskType] The disk type of the instance. Valid values:
  /// [domainEndpoint] (Available since v1.234.0) The default endpoint of the instance in domain name mode.
  /// [eipMax] The max bandwidth of the instance. It will be ignored when `deploy_type = 5`. When modify this value, it only supports adjust to a greater value.
  /// [enableAutoGroup] Specify whether to enable the flexible group creation feature. Default value: `false`. Valid values:
  /// [enableAutoTopic] Specify whether to enable the automatic topic creation feature. Default value: `disable`. Valid values:
  /// [endPoint] The EndPoint to access the kafka instance.
  /// [groupLeft] (Available since v1.214.1) The number of available groups.
  /// [groupUsed] (Available since v1.214.1) The number of used groups.
  /// [instanceType] The type of the Instance. Default value: `alikafka`. Valid values:
  /// [ioMax] The max value of io of the instance. When modify this value, it only support adjust to a greater value.
  /// [ioMaxSpec] The traffic specification of the instance. We recommend that you configure this parameter.
  /// [isPartitionBuy] (Available since v1.214.1) The method that you use to purchase partitions.
  /// [kmsKeyId] The ID of the key that is used to encrypt data on standard SSDs in the region of the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-updateinstanceconfig).
  /// [name] Name of your Kafka instance. The length should between 3 and 64 characters. If not set, will use instance id as instance name.
  /// [paidType] The billing method of the instance. Default value: `PostPaid`. Valid values: `PostPaid`, `PrePaid`. When modify this value, it only support adjust from `PostPaid` to `PrePaid`.
  /// [partitionLeft] (Available since v1.214.1) The number of available partitions.
  /// [partitionNum] The number of partitions.
  /// [partitionUsed] (Available since v1.214.1) The number of used partitions.
  /// [password] The instance password. **NOTE:** If `instance_type` is set to `alikafka_confluent`, `password` is required.
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [saslDomainEndpoint] (Available since v1.234.0) The Simple Authentication and Security Layer (SASL) endpoint of the instance in domain name mode.
  /// [securityGroup] The ID of security group for this instance. If the security group is empty, system will create a default one.
  /// [selectedZones] The zones among which you want to deploy the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-startinstance).
  /// [serverlessConfig] The parameters configured for the serverless ApsaraMQ for Kafka instance. See `serverless_config` below.
  /// [serviceVersion] The version of the Instance. Valid values:
  /// [specType] The instance edition. Default value: `normal`. Valid values:
  /// [sslDomainEndpoint] (Available since v1.234.0) The SSL endpoint of the instance in domain name mode.
  /// [sslEndpoint] (Available since v1.234.0) The Secure Sockets Layer (SSL) endpoint of the instance in IP address mode.
  /// [status] The status of the instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topicLeft] (Available since v1.214.1) The number of available topics.
  /// [topicNumOfBuy] (Available since v1.214.1) The number of purchased topics.
  /// [topicQuota] The max num of topic can be creation of the instance.
  /// [topicUsed] (Available since v1.214.1) The number of used topics.
  /// [vpcId] The VPC ID of the instance.
  /// [vswitchId] The ID of attaching vswitch to instance.
  /// [vswitchIds] The IDs of the vSwitches with which the instance is associated.
  /// [zoneId] The zone ID of the instance. The value can be in zone x or region id-x format. **NOTE**: When the available zone is insufficient, another availability zone may be deployed.
  InstanceState({
    this.config,
    this.confluentConfig,
    this.defaultTopicPartitionNum,
    this.deployType,
    this.diskSize,
    this.diskType,
    this.domainEndpoint,
    this.eipMax,
    this.enableAutoGroup,
    this.enableAutoTopic,
    this.endPoint,
    this.groupLeft,
    this.groupUsed,
    this.instanceType,
    this.ioMax,
    this.ioMaxSpec,
    this.isPartitionBuy,
    this.kmsKeyId,
    this.name,
    this.paidType,
    this.partitionLeft,
    this.partitionNum,
    this.partitionUsed,
    this.password,
    this.resourceGroupId,
    this.saslDomainEndpoint,
    this.securityGroup,
    this.selectedZones,
    this.serverlessConfig,
    this.serviceVersion,
    this.specType,
    this.sslDomainEndpoint,
    this.sslEndpoint,
    this.status,
    this.tags,
    this.topicLeft,
    this.topicNumOfBuy,
    this.topicQuota,
    this.topicUsed,
    this.vpcId,
    this.vswitchId,
    this.vswitchIds,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'confluentConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConfluentConfig, Map<String, dynamic>>(confluentConfig, (value) => value.toMap()),
      'defaultTopicPartitionNum': ?defaultTopicPartitionNum,
      'deployType': ?deployType,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'domainEndpoint': ?domainEndpoint,
      'eipMax': ?eipMax,
      'enableAutoGroup': ?enableAutoGroup,
      'enableAutoTopic': ?enableAutoTopic,
      'endPoint': ?endPoint,
      'groupLeft': ?groupLeft,
      'groupUsed': ?groupUsed,
      'instanceType': ?instanceType,
      'ioMax': ?ioMax,
      'ioMaxSpec': ?ioMaxSpec,
      'isPartitionBuy': ?isPartitionBuy,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'paidType': ?paidType,
      'partitionLeft': ?partitionLeft,
      'partitionNum': ?partitionNum,
      'partitionUsed': ?partitionUsed,
      'password': ?password,
      'resourceGroupId': ?resourceGroupId,
      'saslDomainEndpoint': ?saslDomainEndpoint,
      'securityGroup': ?securityGroup,
      'selectedZones': ?selectedZones,
      'serverlessConfig': ?pulumi.Input.mapOptionalInputValue<InstanceServerlessConfig, Map<String, dynamic>>(serverlessConfig, (value) => value.toMap()),
      'serviceVersion': ?serviceVersion,
      'specType': ?specType,
      'sslDomainEndpoint': ?sslDomainEndpoint,
      'sslEndpoint': ?sslEndpoint,
      'status': ?status,
      'tags': ?tags,
      'topicLeft': ?topicLeft,
      'topicNumOfBuy': ?topicNumOfBuy,
      'topicQuota': ?topicQuota,
      'topicUsed': ?topicUsed,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'vswitchIds': ?vswitchIds,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      config: map['config'] == null ? null : (map['config'] as String).input(),
      confluentConfig: map['confluentConfig'] == null ? null : (InstanceConfluentConfig.fromMap((map['confluentConfig'] as Map).cast<String, dynamic>())).input(),
      defaultTopicPartitionNum: map['defaultTopicPartitionNum'] == null ? null : (map['defaultTopicPartitionNum'] as int).input(),
      deployType: map['deployType'] == null ? null : (map['deployType'] as int).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as int).input(),
      domainEndpoint: map['domainEndpoint'] == null ? null : (map['domainEndpoint'] as String).input(),
      eipMax: map['eipMax'] == null ? null : (map['eipMax'] as int).input(),
      enableAutoGroup: map['enableAutoGroup'] == null ? null : (map['enableAutoGroup'] as bool).input(),
      enableAutoTopic: map['enableAutoTopic'] == null ? null : (map['enableAutoTopic'] as String).input(),
      endPoint: map['endPoint'] == null ? null : (map['endPoint'] as String).input(),
      groupLeft: map['groupLeft'] == null ? null : (map['groupLeft'] as int).input(),
      groupUsed: map['groupUsed'] == null ? null : (map['groupUsed'] as int).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      ioMax: map['ioMax'] == null ? null : (map['ioMax'] as int).input(),
      ioMaxSpec: map['ioMaxSpec'] == null ? null : (map['ioMaxSpec'] as String).input(),
      isPartitionBuy: map['isPartitionBuy'] == null ? null : (map['isPartitionBuy'] as int).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      paidType: map['paidType'] == null ? null : (map['paidType'] as String).input(),
      partitionLeft: map['partitionLeft'] == null ? null : (map['partitionLeft'] as int).input(),
      partitionNum: map['partitionNum'] == null ? null : (map['partitionNum'] as int).input(),
      partitionUsed: map['partitionUsed'] == null ? null : (map['partitionUsed'] as int).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      saslDomainEndpoint: map['saslDomainEndpoint'] == null ? null : (map['saslDomainEndpoint'] as String).input(),
      securityGroup: map['securityGroup'] == null ? null : (map['securityGroup'] as String).input(),
      selectedZones: map['selectedZones'] == null ? null : ((map['selectedZones'] as List).cast<String>()).input(),
      serverlessConfig: map['serverlessConfig'] == null ? null : (InstanceServerlessConfig.fromMap((map['serverlessConfig'] as Map).cast<String, dynamic>())).input(),
      serviceVersion: map['serviceVersion'] == null ? null : (map['serviceVersion'] as String).input(),
      specType: map['specType'] == null ? null : (map['specType'] as String).input(),
      sslDomainEndpoint: map['sslDomainEndpoint'] == null ? null : (map['sslDomainEndpoint'] as String).input(),
      sslEndpoint: map['sslEndpoint'] == null ? null : (map['sslEndpoint'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      topicLeft: map['topicLeft'] == null ? null : (map['topicLeft'] as int).input(),
      topicNumOfBuy: map['topicNumOfBuy'] == null ? null : (map['topicNumOfBuy'] as int).input(),
      topicQuota: map['topicQuota'] == null ? null : (map['topicQuota'] as int).input(),
      topicUsed: map['topicUsed'] == null ? null : (map['topicUsed'] as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds'] as List).cast<String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

