// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_confluent_config.dart';
import 'instance_serverless_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The initial configurations of the ApsaraMQ for Kafka instance. The values must be valid JSON strings.
  final pulumi.Input<String>? config;

  /// The configurations of Confluent. See `confluent_config` below.
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka_confluent`, `confluent_config` is required.
  final pulumi.Input<InstanceConfluentConfig>? confluentConfig;

  /// The number of partitions in a topic that is automatically created.
  final pulumi.Input<int>? defaultTopicPartitionNum;

  /// The deployment type of the instance. **NOTE:** From version 1.161.0, this attribute supports to be updated. Valid values:
  final pulumi.Input<int>? deployType;

  /// The disk size of the instance. When modify this value, it only supports adjust to a greater value.
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka`, `disk_size` is required.
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
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka_serverless`, `serverless_config` is required.
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
  /// Currently, its value only can be set to 50 when creating it, and finally depends on `partition_num` value: &lt;`topic_quota`&gt; = 1000 + &lt;`partition_num`&gt;.
  /// Therefore, you can update it by updating the `partition_num`, and it is the only updating path.
  final pulumi.Input<int>? topicQuota;

  /// (Available since v1.214.1) The number of used topics.
  final pulumi.Input<int>? topicUsed;

  /// The VPC ID of the instance.
  final pulumi.Input<String>? vpcId;

  /// The ID of attaching vswitch to instance.
  final pulumi.Input<String>? vswitchId;

  /// The IDs of the vSwitches with which the instance is associated.
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka` or `alikafka_serverless`, `vswitch_ids` is required. When `instance_type` is set to `alikafka_confluent`, you must specify at least one of the `vswitch_id` and `vswitch_ids`, and if you specify both `vswitch_id` and `vswitch_ids`, only the `vswitch_ids` takes effect.
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
      'confluentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceConfluentConfig,
            Map<String, dynamic>
          >(confluentConfig, (value) => value.toMap()),
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
      'serverlessConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceServerlessConfig,
            Map<String, dynamic>
          >(serverlessConfig, (value) => value.toMap()),
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
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      confluentConfig: (() {
        final guardedValue = map['confluentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceConfluentConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultTopicPartitionNum: (() {
        final guardedValue = map['defaultTopicPartitionNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      deployType: (() {
        final guardedValue = map['deployType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      diskSize: (() {
        final guardedValue = map['diskSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      domainEndpoint: (() {
        final guardedValue = map['domainEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eipMax: (() {
        final guardedValue = map['eipMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enableAutoGroup: (() {
        final guardedValue = map['enableAutoGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableAutoTopic: (() {
        final guardedValue = map['enableAutoTopic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endPoint: (() {
        final guardedValue = map['endPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupLeft: (() {
        final guardedValue = map['groupLeft'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      groupUsed: (() {
        final guardedValue = map['groupUsed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ioMax: (() {
        final guardedValue = map['ioMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ioMaxSpec: (() {
        final guardedValue = map['ioMaxSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isPartitionBuy: (() {
        final guardedValue = map['isPartitionBuy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paidType: (() {
        final guardedValue = map['paidType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partitionLeft: (() {
        final guardedValue = map['partitionLeft'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      partitionNum: (() {
        final guardedValue = map['partitionNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      partitionUsed: (() {
        final guardedValue = map['partitionUsed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saslDomainEndpoint: (() {
        final guardedValue = map['saslDomainEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroup: (() {
        final guardedValue = map['securityGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selectedZones: (() {
        final guardedValue = map['selectedZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      serverlessConfig: (() {
        final guardedValue = map['serverlessConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceServerlessConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceVersion: (() {
        final guardedValue = map['serviceVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      specType: (() {
        final guardedValue = map['specType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslDomainEndpoint: (() {
        final guardedValue = map['sslDomainEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslEndpoint: (() {
        final guardedValue = map['sslEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      topicLeft: (() {
        final guardedValue = map['topicLeft'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      topicNumOfBuy: (() {
        final guardedValue = map['topicNumOfBuy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      topicQuota: (() {
        final guardedValue = map['topicQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      topicUsed: (() {
        final guardedValue = map['topicUsed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchIds: (() {
        final guardedValue = map['vswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
