// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_confluent_config.dart';
import 'instance_serverless_config.dart';

/// {@template pulumi_alikafka_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_alikafka_instance_instance_args_doc}
class InstanceArgs {
  /// The initial configurations of the ApsaraMQ for Kafka instance. The values must be valid JSON strings.
  final pulumi.Input<String>? config;
  /// The configurations of Confluent. See `confluent_config` below.
  /// > **NOTE:** If `instance_type` is set to `alikafka_confluent`, `confluent_config` is required.
  final pulumi.Input<InstanceConfluentConfig>? confluentConfig;
  /// The number of partitions in a topic that is automatically created.
  final pulumi.Input<int>? defaultTopicPartitionNum;
  /// The deployment type of the instance. **NOTE:** From version 1.161.0, this attribute supports to be updated. Valid values:
  final pulumi.Input<int> deployType;
  /// The disk size of the instance. When modify this value, it only supports adjust to a greater value.
  /// > **NOTE:** If `instance_type` is set to `alikafka`, `disk_size` is required.
  final pulumi.Input<int>? diskSize;
  /// The disk type of the instance. Valid values:
  final pulumi.Input<int>? diskType;
  /// The max bandwidth of the instance. It will be ignored when `deploy_type = 5`. When modify this value, it only supports adjust to a greater value.
  final pulumi.Input<int>? eipMax;
  /// Specify whether to enable the flexible group creation feature. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enableAutoGroup;
  /// Specify whether to enable the automatic topic creation feature. Default value: `disable`. Valid values:
  final pulumi.Input<String>? enableAutoTopic;
  /// The type of the Instance. Default value: `alikafka`. Valid values:
  final pulumi.Input<String>? instanceType;
  /// The max value of io of the instance. When modify this value, it only support adjust to a greater value.
  final pulumi.Input<int>? ioMax;
  /// The traffic specification of the instance. We recommend that you configure this parameter.
  /// - You should specify one of the `io_max` and `io_max_spec` parameters, and `io_max_spec` is recommended.
  /// - For more information about the valid values, see [Billing](https://www.alibabacloud.com/help/en/message-queue-for-apache-kafka/latest/billing-overview).
  final pulumi.Input<String>? ioMaxSpec;
  /// The ID of the key that is used to encrypt data on standard SSDs in the region of the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-updateinstanceconfig).
  final pulumi.Input<String>? kmsKeyId;
  /// Name of your Kafka instance. The length should between 3 and 64 characters. If not set, will use instance id as instance name.
  final pulumi.Input<String>? name;
  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PostPaid`, `PrePaid`. When modify this value, it only support adjust from `PostPaid` to `PrePaid`.
  final pulumi.Input<String>? paidType;
  /// The number of partitions.
  final pulumi.Input<int>? partitionNum;
  /// The instance password. **NOTE:** If `instance_type` is set to `alikafka_confluent`, `password` is required.
  final pulumi.Input<String>? password;
  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  final pulumi.Input<String>? resourceGroupId;
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
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The max num of topic can be creation of the instance.
  /// It has been deprecated since version 1.194.0 and using `partition_num` instead.
  /// Currently, its value only can be set to 50 when creating it, and finally depends on `partition_num` value: <`topic_quota`> = 1000 + <`partition_num`>.
  /// Therefore, you can update it by updating the `partition_num`, and it is the only updating path.
  final pulumi.Input<int>? topicQuota;
  /// The VPC ID of the instance.
  final pulumi.Input<String>? vpcId;
  /// The ID of attaching vswitch to instance.
  final pulumi.Input<String>? vswitchId;
  /// The IDs of the vSwitches with which the instance is associated.
  /// > **NOTE:** If `instance_type` is set to `alikafka` or `alikafka_serverless`, `vswitch_ids` is required. When `instance_type` is set to `alikafka_confluent`, you must specify at least one of the `vswitch_id` and `vswitch_ids`, and if you specify both `vswitch_id` and `vswitch_ids`, only the `vswitch_ids` takes effect.
  final pulumi.Input<List<String>>? vswitchIds;
  /// The zone ID of the instance. The value can be in zone x or region id-x format. **NOTE**: When the available zone is insufficient, another availability zone may be deployed.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceArgs].
  /// [config] The initial configurations of the ApsaraMQ for Kafka instance. The values must be valid JSON strings.
  /// [confluentConfig] The configurations of Confluent. See `confluent_config` below.
  /// [defaultTopicPartitionNum] The number of partitions in a topic that is automatically created.
  /// [deployType] The deployment type of the instance. **NOTE:** From version 1.161.0, this attribute supports to be updated. Valid values:
  /// [diskSize] The disk size of the instance. When modify this value, it only supports adjust to a greater value.
  /// [diskType] The disk type of the instance. Valid values:
  /// [eipMax] The max bandwidth of the instance. It will be ignored when `deploy_type = 5`. When modify this value, it only supports adjust to a greater value.
  /// [enableAutoGroup] Specify whether to enable the flexible group creation feature. Default value: `false`. Valid values:
  /// [enableAutoTopic] Specify whether to enable the automatic topic creation feature. Default value: `disable`. Valid values:
  /// [instanceType] The type of the Instance. Default value: `alikafka`. Valid values:
  /// [ioMax] The max value of io of the instance. When modify this value, it only support adjust to a greater value.
  /// [ioMaxSpec] The traffic specification of the instance. We recommend that you configure this parameter.
  /// [kmsKeyId] The ID of the key that is used to encrypt data on standard SSDs in the region of the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-updateinstanceconfig).
  /// [name] Name of your Kafka instance. The length should between 3 and 64 characters. If not set, will use instance id as instance name.
  /// [paidType] The billing method of the instance. Default value: `PostPaid`. Valid values: `PostPaid`, `PrePaid`. When modify this value, it only support adjust from `PostPaid` to `PrePaid`.
  /// [partitionNum] The number of partitions.
  /// [password] The instance password. **NOTE:** If `instance_type` is set to `alikafka_confluent`, `password` is required.
  /// [resourceGroupId] The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  /// [securityGroup] The ID of security group for this instance. If the security group is empty, system will create a default one.
  /// [selectedZones] The zones among which you want to deploy the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-startinstance).
  /// [serverlessConfig] The parameters configured for the serverless ApsaraMQ for Kafka instance. See `serverless_config` below.
  /// [serviceVersion] The version of the Instance. Valid values:
  /// [specType] The instance edition. Default value: `normal`. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [topicQuota] The max num of topic can be creation of the instance.
  /// [vpcId] The VPC ID of the instance.
  /// [vswitchId] The ID of attaching vswitch to instance.
  /// [vswitchIds] The IDs of the vSwitches with which the instance is associated.
  /// [zoneId] The zone ID of the instance. The value can be in zone x or region id-x format. **NOTE**: When the available zone is insufficient, another availability zone may be deployed.
  InstanceArgs({
    String? config,
    InstanceConfluentConfig? confluentConfig,
    int? defaultTopicPartitionNum,
    required int deployType,
    int? diskSize,
    int? diskType,
    int? eipMax,
    bool? enableAutoGroup,
    String? enableAutoTopic,
    String? instanceType,
    int? ioMax,
    String? ioMaxSpec,
    String? kmsKeyId,
    String? name,
    String? paidType,
    int? partitionNum,
    String? password,
    String? resourceGroupId,
    String? securityGroup,
    List<String>? selectedZones,
    InstanceServerlessConfig? serverlessConfig,
    String? serviceVersion,
    String? specType,
    Map<String, String>? tags,
    int? topicQuota,
    String? vpcId,
    String? vswitchId,
    List<String>? vswitchIds,
    String? zoneId,
  }) :
      config = pulumi.Input.asOptionalInput<String>(config),
      confluentConfig = pulumi.Input.asOptionalInput<InstanceConfluentConfig>(confluentConfig),
      defaultTopicPartitionNum = pulumi.Input.asOptionalInput<int>(defaultTopicPartitionNum),
      deployType = pulumi.Input.asInput<int>(deployType),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      diskType = pulumi.Input.asOptionalInput<int>(diskType),
      eipMax = pulumi.Input.asOptionalInput<int>(eipMax),
      enableAutoGroup = pulumi.Input.asOptionalInput<bool>(enableAutoGroup),
      enableAutoTopic = pulumi.Input.asOptionalInput<String>(enableAutoTopic),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ioMax = pulumi.Input.asOptionalInput<int>(ioMax),
      ioMaxSpec = pulumi.Input.asOptionalInput<String>(ioMaxSpec),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      paidType = pulumi.Input.asOptionalInput<String>(paidType),
      partitionNum = pulumi.Input.asOptionalInput<int>(partitionNum),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroup = pulumi.Input.asOptionalInput<String>(securityGroup),
      selectedZones = pulumi.Input.asOptionalInput<List<String>>(selectedZones),
      serverlessConfig = pulumi.Input.asOptionalInput<InstanceServerlessConfig>(serverlessConfig),
      serviceVersion = pulumi.Input.asOptionalInput<String>(serviceVersion),
      specType = pulumi.Input.asOptionalInput<String>(specType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicQuota = pulumi.Input.asOptionalInput<int>(topicQuota),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'confluentConfig': ?pulumi.Input.mapOptionalInputValue<InstanceConfluentConfig, Map<String, dynamic>>(confluentConfig, (value) => value.toMap()),
      'defaultTopicPartitionNum': ?defaultTopicPartitionNum,
      'deployType': deployType,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'eipMax': ?eipMax,
      'enableAutoGroup': ?enableAutoGroup,
      'enableAutoTopic': ?enableAutoTopic,
      'instanceType': ?instanceType,
      'ioMax': ?ioMax,
      'ioMaxSpec': ?ioMaxSpec,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'paidType': ?paidType,
      'partitionNum': ?partitionNum,
      'password': ?password,
      'resourceGroupId': ?resourceGroupId,
      'securityGroup': ?securityGroup,
      'selectedZones': ?selectedZones,
      'serverlessConfig': ?pulumi.Input.mapOptionalInputValue<InstanceServerlessConfig, Map<String, dynamic>>(serverlessConfig, (value) => value.toMap()),
      'serviceVersion': ?serviceVersion,
      'specType': ?specType,
      'tags': ?tags,
      'topicQuota': ?topicQuota,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'vswitchIds': ?vswitchIds,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      config: map['config'] == null ? null : map['config'] as String,
      confluentConfig: map['confluentConfig'] == null ? null : InstanceConfluentConfig.fromMap((map['confluentConfig'] as Map).cast<String, dynamic>()),
      defaultTopicPartitionNum: map['defaultTopicPartitionNum'] == null ? null : map['defaultTopicPartitionNum'] as int,
      deployType: map['deployType'] as int,
      diskSize: map['diskSize'] == null ? null : map['diskSize'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as int,
      eipMax: map['eipMax'] == null ? null : map['eipMax'] as int,
      enableAutoGroup: map['enableAutoGroup'] == null ? null : map['enableAutoGroup'] as bool,
      enableAutoTopic: map['enableAutoTopic'] == null ? null : map['enableAutoTopic'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      ioMax: map['ioMax'] == null ? null : map['ioMax'] as int,
      ioMaxSpec: map['ioMaxSpec'] == null ? null : map['ioMaxSpec'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      paidType: map['paidType'] == null ? null : map['paidType'] as String,
      partitionNum: map['partitionNum'] == null ? null : map['partitionNum'] as int,
      password: map['password'] == null ? null : map['password'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityGroup: map['securityGroup'] == null ? null : map['securityGroup'] as String,
      selectedZones: map['selectedZones'] == null ? null : (map['selectedZones'] as List).cast<String>(),
      serverlessConfig: map['serverlessConfig'] == null ? null : InstanceServerlessConfig.fromMap((map['serverlessConfig'] as Map).cast<String, dynamic>()),
      serviceVersion: map['serviceVersion'] == null ? null : map['serviceVersion'] as String,
      specType: map['specType'] == null ? null : map['specType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      topicQuota: map['topicQuota'] == null ? null : map['topicQuota'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

