// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubscriptionJob resources.
class SubscriptionJobState {
  /// Subscription start time in Unix timestamp format.
  final pulumi.Input<String>? checkpoint;
  /// [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  final pulumi.Input<int>? computeUnit;
  /// The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  final pulumi.Input<int>? databaseCount;
  /// Subscription object, in the format of JSON strings. For detailed definitions, please refer to the description of migration, synchronization or subscription objects [document](https://help.aliyun.com/document_detail/209545.html).
  final pulumi.Input<String>? dbList;
  /// This parameter decides whether to monitor the delay status. Valid values: `true`, `false`.
  final pulumi.Input<bool>? delayNotice;
  /// The mobile phone number of the contact who delayed the alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  final pulumi.Input<String>? delayPhone;
  /// When `delay_notice` is set to `true`, this parameter must be passed in. The threshold for triggering the delay alarm. The unit is second and needs to be an integer. The threshold can be set according to business needs. It is recommended to set it above 10 seconds to avoid delay fluctuations caused by network and database load.
  final pulumi.Input<String>? delayRuleTime;
  /// The destination endpoint engine name. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`.
  final pulumi.Input<String>? destinationEndpointEngineName;
  /// The destination region. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  final pulumi.Input<String>? destinationRegion;
  /// The ID of subscription instance.
  final pulumi.Input<String>? dtsInstanceId;
  /// The name of subscription task.
  final pulumi.Input<String>? dtsJobName;
  /// This parameter decides whether to monitor abnormal status. Valid values: `true`, `false`.
  final pulumi.Input<bool>? errorNotice;
  /// The mobile phone number of the contact for abnormal alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  final pulumi.Input<String>? errorPhone;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  final pulumi.Input<String>? instanceClass;
  /// The duration of prepaid instance purchase. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  final pulumi.Input<int>? paymentDuration;
  /// The payment duration unit. Valid values: `Month`, `Year`. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  final pulumi.Input<String>? paymentDurationUnit;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// DTS reserves parameters, the format is a JSON string, you can pass in this parameter to complete the source and target database information (such as the data storage format of the target Kafka database, the instance ID of the cloud enterprise network CEN). For more information, please refer to the parameter description of the [Reserve parameter](https://help.aliyun.com/document_detail/176470.html).
  final pulumi.Input<String>? reserve;
  /// To subscribe to the name of the database.
  final pulumi.Input<String>? sourceEndpointDatabaseName;
  /// The source database type value is MySQL or Oracle. Valid values: `MySQL`, `Oracle`.
  final pulumi.Input<String>? sourceEndpointEngineName;
  /// The ID of source instance. Only when the type of source database instance was RDS MySQL, PolarDB-X 1.0, PolarDB MySQL, this parameter can be available and must be set.
  final pulumi.Input<String>? sourceEndpointInstanceId;
  /// The type of source instance. Valid values: `RDS`, `PolarDB`, `DRDS`, `LocalInstance`, `ECS`, `Express`, `CEN`, `dg`.
  final pulumi.Input<String>? sourceEndpointInstanceType;
  /// The IP of source endpoint.
  final pulumi.Input<String>? sourceEndpointIp;
  /// The SID of Oracle Database. When the source database is self-built Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  final pulumi.Input<String>? sourceEndpointOracleSid;
  /// The Alibaba Cloud account ID to which the source instance belongs. This parameter is only available when configuring data subscriptions across Alibaba Cloud accounts and must be passed in.
  final pulumi.Input<String>? sourceEndpointOwnerId;
  /// The password of source database instance account.
  final pulumi.Input<String>? sourceEndpointPassword;
  /// The port of source database.
  final pulumi.Input<String>? sourceEndpointPort;
  /// The region of source database.
  final pulumi.Input<String>? sourceEndpointRegion;
  /// Both the authorization roles. When the source instance and configure subscriptions task of the Alibaba Cloud account is not the same as the need to pass the parameter, to specify the source of the authorization roles, to allow configuration subscription task of the Alibaba Cloud account to access the source of the source instance information.
  final pulumi.Input<String>? sourceEndpointRole;
  /// The username of source database instance account.
  final pulumi.Input<String>? sourceEndpointUserName;
  /// The status of the task. Valid values: `Normal`, `Abnormal`. When a task created, it is in this state of `NotStarted`. You can specify this state to `Normal` to start the job, and specify this state of `Abnormal` to stop the job. **Note: We treat the state `Starting` as the state of `Normal`, and consider the two states to be consistent on the user side.**
  final pulumi.Input<String>? status;
  /// Whether to subscribe the DDL type of data. Valid values: `true`, `false`.
  final pulumi.Input<bool>? subscriptionDataTypeDdl;
  /// Whether to subscribe the DML type of data. Valid values: `true`, `false`.
  final pulumi.Input<bool>? subscriptionDataTypeDml;
  /// Subscription task type of network value: classic: classic Network. Virtual Private Cloud (vpc): a vpc. Valid values: `classic`, `vpc`.
  final pulumi.Input<String>? subscriptionInstanceNetworkType;
  /// The ID of subscription vpc instance. When the value of `subscription_instance_network_type` is vpc, this parameter is available and must be passed in.
  final pulumi.Input<String>? subscriptionInstanceVpcId;
  /// The ID of subscription VSwitch instance. When the value of `subscription_instance_network_type` is vpc, this parameter is available and must be passed in.
  final pulumi.Input<String>? subscriptionInstanceVswitchId;
  /// The sync architecture. Valid values: `bidirectional`, `oneway`.
  final pulumi.Input<String>? syncArchitecture;
  /// The synchronization direction. Valid values: `Forward`, `Reverse`. When the topology type of the data synchronization instance is bidirectional, it can be passed in to reverse to start the reverse synchronization link.
  final pulumi.Input<String>? synchronizationDirection;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SubscriptionJobState].
  /// [checkpoint] Subscription start time in Unix timestamp format.
  /// [computeUnit] [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  /// [databaseCount] The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  /// [dbList] Subscription object, in the format of JSON strings. For detailed definitions, please refer to the description of migration, synchronization or subscription objects [document](https://help.aliyun.com/document_detail/209545.html).
  /// [delayNotice] This parameter decides whether to monitor the delay status. Valid values: `true`, `false`.
  /// [delayPhone] The mobile phone number of the contact who delayed the alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  /// [delayRuleTime] When `delay_notice` is set to `true`, this parameter must be passed in. The threshold for triggering the delay alarm. The unit is second and needs to be an integer. The threshold can be set according to business needs. It is recommended to set it above 10 seconds to avoid delay fluctuations caused by network and database load.
  /// [destinationEndpointEngineName] The destination endpoint engine name. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`.
  /// [destinationRegion] The destination region. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  /// [dtsInstanceId] The ID of subscription instance.
  /// [dtsJobName] The name of subscription task.
  /// [errorNotice] This parameter decides whether to monitor abnormal status. Valid values: `true`, `false`.
  /// [errorPhone] The mobile phone number of the contact for abnormal alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  /// [instanceClass] The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  /// [paymentDuration] The duration of prepaid instance purchase. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  /// [paymentDurationUnit] The payment duration unit. Valid values: `Month`, `Year`. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  /// [reserve] DTS reserves parameters, the format is a JSON string, you can pass in this parameter to complete the source and target database information (such as the data storage format of the target Kafka database, the instance ID of the cloud enterprise network CEN). For more information, please refer to the parameter description of the [Reserve parameter](https://help.aliyun.com/document_detail/176470.html).
  /// [sourceEndpointDatabaseName] To subscribe to the name of the database.
  /// [sourceEndpointEngineName] The source database type value is MySQL or Oracle. Valid values: `MySQL`, `Oracle`.
  /// [sourceEndpointInstanceId] The ID of source instance. Only when the type of source database instance was RDS MySQL, PolarDB-X 1.0, PolarDB MySQL, this parameter can be available and must be set.
  /// [sourceEndpointInstanceType] The type of source instance. Valid values: `RDS`, `PolarDB`, `DRDS`, `LocalInstance`, `ECS`, `Express`, `CEN`, `dg`.
  /// [sourceEndpointIp] The IP of source endpoint.
  /// [sourceEndpointOracleSid] The SID of Oracle Database. When the source database is self-built Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  /// [sourceEndpointOwnerId] The Alibaba Cloud account ID to which the source instance belongs. This parameter is only available when configuring data subscriptions across Alibaba Cloud accounts and must be passed in.
  /// [sourceEndpointPassword] The password of source database instance account.
  /// [sourceEndpointPort] The port of source database.
  /// [sourceEndpointRegion] The region of source database.
  /// [sourceEndpointRole] Both the authorization roles. When the source instance and configure subscriptions task of the Alibaba Cloud account is not the same as the need to pass the parameter, to specify the source of the authorization roles, to allow configuration subscription task of the Alibaba Cloud account to access the source of the source instance information.
  /// [sourceEndpointUserName] The username of source database instance account.
  /// [status] The status of the task. Valid values: `Normal`, `Abnormal`. When a task created, it is in this state of `NotStarted`. You can specify this state to `Normal` to start the job, and specify this state of `Abnormal` to stop the job. **Note: We treat the state `Starting` as the state of `Normal`, and consider the two states to be consistent on the user side.**
  /// [subscriptionDataTypeDdl] Whether to subscribe the DDL type of data. Valid values: `true`, `false`.
  /// [subscriptionDataTypeDml] Whether to subscribe the DML type of data. Valid values: `true`, `false`.
  /// [subscriptionInstanceNetworkType] Subscription task type of network value: classic: classic Network. Virtual Private Cloud (vpc): a vpc. Valid values: `classic`, `vpc`.
  /// [subscriptionInstanceVpcId] The ID of subscription vpc instance. When the value of `subscription_instance_network_type` is vpc, this parameter is available and must be passed in.
  /// [subscriptionInstanceVswitchId] The ID of subscription VSwitch instance. When the value of `subscription_instance_network_type` is vpc, this parameter is available and must be passed in.
  /// [syncArchitecture] The sync architecture. Valid values: `bidirectional`, `oneway`.
  /// [synchronizationDirection] The synchronization direction. Valid values: `Forward`, `Reverse`. When the topology type of the data synchronization instance is bidirectional, it can be passed in to reverse to start the reverse synchronization link.
  /// [tags] A mapping of tags to assign to the resource.
  SubscriptionJobState({
    pulumi.Output<String>? checkpoint,
    pulumi.Output<int>? computeUnit,
    pulumi.Output<int>? databaseCount,
    pulumi.Output<String>? dbList,
    pulumi.Output<bool>? delayNotice,
    pulumi.Output<String>? delayPhone,
    pulumi.Output<String>? delayRuleTime,
    pulumi.Output<String>? destinationEndpointEngineName,
    pulumi.Output<String>? destinationRegion,
    pulumi.Output<String>? dtsInstanceId,
    pulumi.Output<String>? dtsJobName,
    pulumi.Output<bool>? errorNotice,
    pulumi.Output<String>? errorPhone,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<int>? paymentDuration,
    pulumi.Output<String>? paymentDurationUnit,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? reserve,
    pulumi.Output<String>? sourceEndpointDatabaseName,
    pulumi.Output<String>? sourceEndpointEngineName,
    pulumi.Output<String>? sourceEndpointInstanceId,
    pulumi.Output<String>? sourceEndpointInstanceType,
    pulumi.Output<String>? sourceEndpointIp,
    pulumi.Output<String>? sourceEndpointOracleSid,
    pulumi.Output<String>? sourceEndpointOwnerId,
    pulumi.Output<String>? sourceEndpointPassword,
    pulumi.Output<String>? sourceEndpointPort,
    pulumi.Output<String>? sourceEndpointRegion,
    pulumi.Output<String>? sourceEndpointRole,
    pulumi.Output<String>? sourceEndpointUserName,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? subscriptionDataTypeDdl,
    pulumi.Output<bool>? subscriptionDataTypeDml,
    pulumi.Output<String>? subscriptionInstanceNetworkType,
    pulumi.Output<String>? subscriptionInstanceVpcId,
    pulumi.Output<String>? subscriptionInstanceVswitchId,
    pulumi.Output<String>? syncArchitecture,
    pulumi.Output<String>? synchronizationDirection,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      checkpoint = pulumi.Input.asOptionalInput<String>(checkpoint),
      computeUnit = pulumi.Input.asOptionalInput<int>(computeUnit),
      databaseCount = pulumi.Input.asOptionalInput<int>(databaseCount),
      dbList = pulumi.Input.asOptionalInput<String>(dbList),
      delayNotice = pulumi.Input.asOptionalInput<bool>(delayNotice),
      delayPhone = pulumi.Input.asOptionalInput<String>(delayPhone),
      delayRuleTime = pulumi.Input.asOptionalInput<String>(delayRuleTime),
      destinationEndpointEngineName = pulumi.Input.asOptionalInput<String>(destinationEndpointEngineName),
      destinationRegion = pulumi.Input.asOptionalInput<String>(destinationRegion),
      dtsInstanceId = pulumi.Input.asOptionalInput<String>(dtsInstanceId),
      dtsJobName = pulumi.Input.asOptionalInput<String>(dtsJobName),
      errorNotice = pulumi.Input.asOptionalInput<bool>(errorNotice),
      errorPhone = pulumi.Input.asOptionalInput<String>(errorPhone),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      paymentDuration = pulumi.Input.asOptionalInput<int>(paymentDuration),
      paymentDurationUnit = pulumi.Input.asOptionalInput<String>(paymentDurationUnit),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      reserve = pulumi.Input.asOptionalInput<String>(reserve),
      sourceEndpointDatabaseName = pulumi.Input.asOptionalInput<String>(sourceEndpointDatabaseName),
      sourceEndpointEngineName = pulumi.Input.asOptionalInput<String>(sourceEndpointEngineName),
      sourceEndpointInstanceId = pulumi.Input.asOptionalInput<String>(sourceEndpointInstanceId),
      sourceEndpointInstanceType = pulumi.Input.asOptionalInput<String>(sourceEndpointInstanceType),
      sourceEndpointIp = pulumi.Input.asOptionalInput<String>(sourceEndpointIp),
      sourceEndpointOracleSid = pulumi.Input.asOptionalInput<String>(sourceEndpointOracleSid),
      sourceEndpointOwnerId = pulumi.Input.asOptionalInput<String>(sourceEndpointOwnerId),
      sourceEndpointPassword = pulumi.Input.asOptionalInput<String>(sourceEndpointPassword),
      sourceEndpointPort = pulumi.Input.asOptionalInput<String>(sourceEndpointPort),
      sourceEndpointRegion = pulumi.Input.asOptionalInput<String>(sourceEndpointRegion),
      sourceEndpointRole = pulumi.Input.asOptionalInput<String>(sourceEndpointRole),
      sourceEndpointUserName = pulumi.Input.asOptionalInput<String>(sourceEndpointUserName),
      status = pulumi.Input.asOptionalInput<String>(status),
      subscriptionDataTypeDdl = pulumi.Input.asOptionalInput<bool>(subscriptionDataTypeDdl),
      subscriptionDataTypeDml = pulumi.Input.asOptionalInput<bool>(subscriptionDataTypeDml),
      subscriptionInstanceNetworkType = pulumi.Input.asOptionalInput<String>(subscriptionInstanceNetworkType),
      subscriptionInstanceVpcId = pulumi.Input.asOptionalInput<String>(subscriptionInstanceVpcId),
      subscriptionInstanceVswitchId = pulumi.Input.asOptionalInput<String>(subscriptionInstanceVswitchId),
      syncArchitecture = pulumi.Input.asOptionalInput<String>(syncArchitecture),
      synchronizationDirection = pulumi.Input.asOptionalInput<String>(synchronizationDirection),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpoint': ?checkpoint,
      'computeUnit': ?computeUnit,
      'databaseCount': ?databaseCount,
      'dbList': ?dbList,
      'delayNotice': ?delayNotice,
      'delayPhone': ?delayPhone,
      'delayRuleTime': ?delayRuleTime,
      'destinationEndpointEngineName': ?destinationEndpointEngineName,
      'destinationRegion': ?destinationRegion,
      'dtsInstanceId': ?dtsInstanceId,
      'dtsJobName': ?dtsJobName,
      'errorNotice': ?errorNotice,
      'errorPhone': ?errorPhone,
      'instanceClass': ?instanceClass,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': ?paymentType,
      'reserve': ?reserve,
      'sourceEndpointDatabaseName': ?sourceEndpointDatabaseName,
      'sourceEndpointEngineName': ?sourceEndpointEngineName,
      'sourceEndpointInstanceId': ?sourceEndpointInstanceId,
      'sourceEndpointInstanceType': ?sourceEndpointInstanceType,
      'sourceEndpointIp': ?sourceEndpointIp,
      'sourceEndpointOracleSid': ?sourceEndpointOracleSid,
      'sourceEndpointOwnerId': ?sourceEndpointOwnerId,
      'sourceEndpointPassword': ?sourceEndpointPassword,
      'sourceEndpointPort': ?sourceEndpointPort,
      'sourceEndpointRegion': ?sourceEndpointRegion,
      'sourceEndpointRole': ?sourceEndpointRole,
      'sourceEndpointUserName': ?sourceEndpointUserName,
      'status': ?status,
      'subscriptionDataTypeDdl': ?subscriptionDataTypeDdl,
      'subscriptionDataTypeDml': ?subscriptionDataTypeDml,
      'subscriptionInstanceNetworkType': ?subscriptionInstanceNetworkType,
      'subscriptionInstanceVpcId': ?subscriptionInstanceVpcId,
      'subscriptionInstanceVswitchId': ?subscriptionInstanceVswitchId,
      'syncArchitecture': ?syncArchitecture,
      'synchronizationDirection': ?synchronizationDirection,
      'tags': ?tags,
    };
  }

  factory SubscriptionJobState.fromMap(Map<String, dynamic> map) {
    return SubscriptionJobState(
      checkpoint: map['checkpoint'] == null ? null : pulumi.Output.create<String>(map['checkpoint'] as String),
      computeUnit: map['computeUnit'] == null ? null : pulumi.Output.create<int>(map['computeUnit'] as int),
      databaseCount: map['databaseCount'] == null ? null : pulumi.Output.create<int>(map['databaseCount'] as int),
      dbList: map['dbList'] == null ? null : pulumi.Output.create<String>(map['dbList'] as String),
      delayNotice: map['delayNotice'] == null ? null : pulumi.Output.create<bool>(map['delayNotice'] as bool),
      delayPhone: map['delayPhone'] == null ? null : pulumi.Output.create<String>(map['delayPhone'] as String),
      delayRuleTime: map['delayRuleTime'] == null ? null : pulumi.Output.create<String>(map['delayRuleTime'] as String),
      destinationEndpointEngineName: map['destinationEndpointEngineName'] == null ? null : pulumi.Output.create<String>(map['destinationEndpointEngineName'] as String),
      destinationRegion: map['destinationRegion'] == null ? null : pulumi.Output.create<String>(map['destinationRegion'] as String),
      dtsInstanceId: map['dtsInstanceId'] == null ? null : pulumi.Output.create<String>(map['dtsInstanceId'] as String),
      dtsJobName: map['dtsJobName'] == null ? null : pulumi.Output.create<String>(map['dtsJobName'] as String),
      errorNotice: map['errorNotice'] == null ? null : pulumi.Output.create<bool>(map['errorNotice'] as bool),
      errorPhone: map['errorPhone'] == null ? null : pulumi.Output.create<String>(map['errorPhone'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      paymentDuration: map['paymentDuration'] == null ? null : pulumi.Output.create<int>(map['paymentDuration'] as int),
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : pulumi.Output.create<String>(map['paymentDurationUnit'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      reserve: map['reserve'] == null ? null : pulumi.Output.create<String>(map['reserve'] as String),
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointDatabaseName'] as String),
      sourceEndpointEngineName: map['sourceEndpointEngineName'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointEngineName'] as String),
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointInstanceId'] as String),
      sourceEndpointInstanceType: map['sourceEndpointInstanceType'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointInstanceType'] as String),
      sourceEndpointIp: map['sourceEndpointIp'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointIp'] as String),
      sourceEndpointOracleSid: map['sourceEndpointOracleSid'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointOracleSid'] as String),
      sourceEndpointOwnerId: map['sourceEndpointOwnerId'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointOwnerId'] as String),
      sourceEndpointPassword: map['sourceEndpointPassword'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointPassword'] as String),
      sourceEndpointPort: map['sourceEndpointPort'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointPort'] as String),
      sourceEndpointRegion: map['sourceEndpointRegion'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointRegion'] as String),
      sourceEndpointRole: map['sourceEndpointRole'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointRole'] as String),
      sourceEndpointUserName: map['sourceEndpointUserName'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointUserName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subscriptionDataTypeDdl: map['subscriptionDataTypeDdl'] == null ? null : pulumi.Output.create<bool>(map['subscriptionDataTypeDdl'] as bool),
      subscriptionDataTypeDml: map['subscriptionDataTypeDml'] == null ? null : pulumi.Output.create<bool>(map['subscriptionDataTypeDml'] as bool),
      subscriptionInstanceNetworkType: map['subscriptionInstanceNetworkType'] == null ? null : pulumi.Output.create<String>(map['subscriptionInstanceNetworkType'] as String),
      subscriptionInstanceVpcId: map['subscriptionInstanceVpcId'] == null ? null : pulumi.Output.create<String>(map['subscriptionInstanceVpcId'] as String),
      subscriptionInstanceVswitchId: map['subscriptionInstanceVswitchId'] == null ? null : pulumi.Output.create<String>(map['subscriptionInstanceVswitchId'] as String),
      syncArchitecture: map['syncArchitecture'] == null ? null : pulumi.Output.create<String>(map['syncArchitecture'] as String),
      synchronizationDirection: map['synchronizationDirection'] == null ? null : pulumi.Output.create<String>(map['synchronizationDirection'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

