import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_confluent_config.dart';
import 'instance_serverless_config.dart';
import 'instance_state.dart';

/// ## Import
///
/// AliKafka instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alikafka/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// The initial configurations of the ApsaraMQ for Kafka instance. The values must be valid JSON strings.
  late final pulumi.Output<String> config;

  /// The configurations of Confluent. See `confluent_config` below.
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka_confluent`, `confluent_config` is required.
  late final pulumi.Output<InstanceConfluentConfig> confluentConfig;

  /// The number of partitions in a topic that is automatically created.
  late final pulumi.Output<int> defaultTopicPartitionNum;

  /// The deployment type of the instance. **NOTE:** From version 1.161.0, this attribute supports to be updated. Valid values:
  late final pulumi.Output<int> deployType;

  /// The disk size of the instance. When modify this value, it only supports adjust to a greater value.
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka`, `disk_size` is required.
  late final pulumi.Output<int?> diskSize;

  /// The disk type of the instance. Valid values:
  late final pulumi.Output<int?> diskType;

  /// (Available since v1.234.0) The default endpoint of the instance in domain name mode.
  late final pulumi.Output<String> domainEndpoint;

  /// The max bandwidth of the instance. It will be ignored when `deploy_type = 5`. When modify this value, it only supports adjust to a greater value.
  late final pulumi.Output<int> eipMax;

  /// Specify whether to enable the flexible group creation feature. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> enableAutoGroup;

  /// Specify whether to enable the automatic topic creation feature. Default value: `disable`. Valid values:
  late final pulumi.Output<String> enableAutoTopic;

  /// The EndPoint to access the kafka instance.
  late final pulumi.Output<String> endPoint;

  /// (Available since v1.214.1) The number of available groups.
  late final pulumi.Output<int> groupLeft;

  /// (Available since v1.214.1) The number of used groups.
  late final pulumi.Output<int> groupUsed;

  /// The type of the Instance. Default value: `alikafka`. Valid values:
  late final pulumi.Output<String> instanceType;

  /// The max value of io of the instance. When modify this value, it only support adjust to a greater value.
  late final pulumi.Output<int> ioMax;

  /// The traffic specification of the instance. We recommend that you configure this parameter.
  /// - You should specify one of the `io_max` and `io_max_spec` parameters, and `io_max_spec` is recommended.
  /// - For more information about the valid values, see [Billing](https://www.alibabacloud.com/help/en/message-queue-for-apache-kafka/latest/billing-overview).
  late final pulumi.Output<String> ioMaxSpec;

  /// (Available since v1.214.1) The method that you use to purchase partitions.
  late final pulumi.Output<int> isPartitionBuy;

  /// The ID of the key that is used to encrypt data on standard SSDs in the region of the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-updateinstanceconfig).
  late final pulumi.Output<String?> kmsKeyId;

  /// Name of your Kafka instance. The length should between 3 and 64 characters. If not set, will use instance id as instance name.
  late final pulumi.Output<String> name;

  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PostPaid`, `PrePaid`. When modify this value, it only support adjust from `PostPaid` to `PrePaid`.
  late final pulumi.Output<String?> paidType;

  /// (Available since v1.214.1) The number of available partitions.
  late final pulumi.Output<int> partitionLeft;

  /// The number of partitions.
  late final pulumi.Output<int?> partitionNum;

  /// (Available since v1.214.1) The number of used partitions.
  late final pulumi.Output<int> partitionUsed;

  /// The instance password. **NOTE:** If `instance_type` is set to `alikafka_confluent`, `password` is required.
  late final pulumi.Output<String?> password;

  /// The ID of the resource group. **Note:** Once you set a value of this property, you cannot set it to an empty string anymore.
  late final pulumi.Output<String> resourceGroupId;

  /// (Available since v1.234.0) The Simple Authentication and Security Layer (SASL) endpoint of the instance in domain name mode.
  late final pulumi.Output<String> saslDomainEndpoint;

  /// The ID of security group for this instance. If the security group is empty, system will create a default one.
  late final pulumi.Output<String> securityGroup;

  /// The zones among which you want to deploy the instance. For more information, see [How to use it](https://www.alibabacloud.com/help/en/apsaramq-for-kafka/cloud-message-queue-for-kafka/developer-reference/api-alikafka-2019-09-16-startinstance).
  late final pulumi.Output<List<String>?> selectedZones;

  /// The parameters configured for the serverless ApsaraMQ for Kafka instance. See `serverless_config` below.
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka_serverless`, `serverless_config` is required.
  late final pulumi.Output<InstanceServerlessConfig> serverlessConfig;

  /// The version of the Instance. Valid values:
  /// - If `instance_type` is set to `alikafka`. Default value: `2.2.0`. Valid values: `2.2.0`, `2.6.2`.
  /// - If `instance_type` is set to `alikafka_serverless`. Default value: `3.3.1`. Valid values: `3.3.1`.
  /// - If `instance_type` is set to `alikafka_confluent`. Default value: `7.4.0`. Valid values: `7.4.0`.
  late final pulumi.Output<String> serviceVersion;

  /// The instance edition. Default value: `normal`. Valid values:
  /// - If `instance_type` is set to `alikafka`. Valid values: `normal`, `professional`, `professionalForHighRead`.
  /// - If `instance_type` is set to `alikafka_serverless`. Valid values: `normal`.
  /// - If `instance_type` is set to `alikafka_confluent`. Valid values: `professional`, `enterprise`.
  late final pulumi.Output<String?> specType;

  /// (Available since v1.234.0) The SSL endpoint of the instance in domain name mode.
  late final pulumi.Output<String> sslDomainEndpoint;

  /// (Available since v1.234.0) The Secure Sockets Layer (SSL) endpoint of the instance in IP address mode.
  late final pulumi.Output<String> sslEndpoint;

  /// The status of the instance.
  late final pulumi.Output<int> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// (Available since v1.214.1) The number of available topics.
  late final pulumi.Output<int> topicLeft;

  /// (Available since v1.214.1) The number of purchased topics.
  late final pulumi.Output<int> topicNumOfBuy;

  /// The max num of topic can be creation of the instance.
  /// It has been deprecated since version 1.194.0 and using `partition_num` instead.
  /// Currently, its value only can be set to 50 when creating it, and finally depends on `partition_num` value: &lt;`topic_quota`&gt; = 1000 + &lt;`partition_num`&gt;.
  /// Therefore, you can update it by updating the `partition_num`, and it is the only updating path.
  late final pulumi.Output<int> topicQuota;

  /// (Available since v1.214.1) The number of used topics.
  late final pulumi.Output<int> topicUsed;

  /// The VPC ID of the instance.
  late final pulumi.Output<String> vpcId;

  /// The ID of attaching vswitch to instance.
  late final pulumi.Output<String> vswitchId;

  /// The IDs of the vSwitches with which the instance is associated.
  /// &gt; **NOTE:** If `instance_type` is set to `alikafka` or `alikafka_serverless`, `vswitch_ids` is required. When `instance_type` is set to `alikafka_confluent`, you must specify at least one of the `vswitch_id` and `vswitch_ids`, and if you specify both `vswitch_id` and `vswitch_ids`, only the `vswitch_ids` takes effect.
  late final pulumi.Output<List<String>> vswitchIds;

  /// The zone ID of the instance. The value can be in zone x or region id-x format. **NOTE**: When the available zone is insufficient, another availability zone may be deployed.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_alikafka_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alikafka/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<String>('config');
    confluentConfig = registerOutput<InstanceConfluentConfig>(
      'confluentConfig',
    );
    defaultTopicPartitionNum = registerOutput<int>('defaultTopicPartitionNum');
    deployType = registerOutput<int>('deployType');
    diskSize = registerOutput<int?>('diskSize');
    diskType = registerOutput<int?>('diskType');
    domainEndpoint = registerOutput<String>('domainEndpoint');
    eipMax = registerOutput<int>('eipMax');
    enableAutoGroup = registerOutput<bool?>('enableAutoGroup');
    enableAutoTopic = registerOutput<String>('enableAutoTopic');
    endPoint = registerOutput<String>('endPoint');
    groupLeft = registerOutput<int>('groupLeft');
    groupUsed = registerOutput<int>('groupUsed');
    instanceType = registerOutput<String>('instanceType');
    ioMax = registerOutput<int>('ioMax');
    ioMaxSpec = registerOutput<String>('ioMaxSpec');
    isPartitionBuy = registerOutput<int>('isPartitionBuy');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    paidType = registerOutput<String?>('paidType');
    partitionLeft = registerOutput<int>('partitionLeft');
    partitionNum = registerOutput<int?>('partitionNum');
    partitionUsed = registerOutput<int>('partitionUsed');
    password = registerOutput<String?>('password');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    saslDomainEndpoint = registerOutput<String>('saslDomainEndpoint');
    securityGroup = registerOutput<String>('securityGroup');
    selectedZones = registerOutput<List<String>?>('selectedZones');
    serverlessConfig = registerOutput<InstanceServerlessConfig>(
      'serverlessConfig',
    );
    serviceVersion = registerOutput<String>('serviceVersion');
    specType = registerOutput<String?>('specType');
    sslDomainEndpoint = registerOutput<String>('sslDomainEndpoint');
    sslEndpoint = registerOutput<String>('sslEndpoint');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topicLeft = registerOutput<int>('topicLeft');
    topicNumOfBuy = registerOutput<int>('topicNumOfBuy');
    topicQuota = registerOutput<int>('topicQuota');
    topicUsed = registerOutput<int>('topicUsed');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    vswitchIds = registerOutput<List<String>>('vswitchIds');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alikafka/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config = registerOutput<String>('config');
    confluentConfig = registerOutput<InstanceConfluentConfig>(
      'confluentConfig',
    );
    defaultTopicPartitionNum = registerOutput<int>('defaultTopicPartitionNum');
    deployType = registerOutput<int>('deployType');
    diskSize = registerOutput<int?>('diskSize');
    diskType = registerOutput<int?>('diskType');
    domainEndpoint = registerOutput<String>('domainEndpoint');
    eipMax = registerOutput<int>('eipMax');
    enableAutoGroup = registerOutput<bool?>('enableAutoGroup');
    enableAutoTopic = registerOutput<String>('enableAutoTopic');
    endPoint = registerOutput<String>('endPoint');
    groupLeft = registerOutput<int>('groupLeft');
    groupUsed = registerOutput<int>('groupUsed');
    instanceType = registerOutput<String>('instanceType');
    ioMax = registerOutput<int>('ioMax');
    ioMaxSpec = registerOutput<String>('ioMaxSpec');
    isPartitionBuy = registerOutput<int>('isPartitionBuy');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    paidType = registerOutput<String?>('paidType');
    partitionLeft = registerOutput<int>('partitionLeft');
    partitionNum = registerOutput<int?>('partitionNum');
    partitionUsed = registerOutput<int>('partitionUsed');
    password = registerOutput<String?>('password');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    saslDomainEndpoint = registerOutput<String>('saslDomainEndpoint');
    securityGroup = registerOutput<String>('securityGroup');
    selectedZones = registerOutput<List<String>?>('selectedZones');
    serverlessConfig = registerOutput<InstanceServerlessConfig>(
      'serverlessConfig',
    );
    serviceVersion = registerOutput<String>('serviceVersion');
    specType = registerOutput<String?>('specType');
    sslDomainEndpoint = registerOutput<String>('sslDomainEndpoint');
    sslEndpoint = registerOutput<String>('sslEndpoint');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    topicLeft = registerOutput<int>('topicLeft');
    topicNumOfBuy = registerOutput<int>('topicNumOfBuy');
    topicQuota = registerOutput<int>('topicQuota');
    topicUsed = registerOutput<int>('topicUsed');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
    vswitchIds = registerOutput<List<String>>('vswitchIds');
    zoneId = registerOutput<String>('zoneId');
  }
}
