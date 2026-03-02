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
    this.checkpoint,
    this.computeUnit,
    this.databaseCount,
    this.dbList,
    this.delayNotice,
    this.delayPhone,
    this.delayRuleTime,
    this.destinationEndpointEngineName,
    this.destinationRegion,
    this.dtsInstanceId,
    this.dtsJobName,
    this.errorNotice,
    this.errorPhone,
    this.instanceClass,
    this.paymentDuration,
    this.paymentDurationUnit,
    this.paymentType,
    this.reserve,
    this.sourceEndpointDatabaseName,
    this.sourceEndpointEngineName,
    this.sourceEndpointInstanceId,
    this.sourceEndpointInstanceType,
    this.sourceEndpointIp,
    this.sourceEndpointOracleSid,
    this.sourceEndpointOwnerId,
    this.sourceEndpointPassword,
    this.sourceEndpointPort,
    this.sourceEndpointRegion,
    this.sourceEndpointRole,
    this.sourceEndpointUserName,
    this.status,
    this.subscriptionDataTypeDdl,
    this.subscriptionDataTypeDml,
    this.subscriptionInstanceNetworkType,
    this.subscriptionInstanceVpcId,
    this.subscriptionInstanceVswitchId,
    this.syncArchitecture,
    this.synchronizationDirection,
    this.tags,
  });

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
      checkpoint: map['checkpoint'] == null ? null : (map['checkpoint']! as String).input(),
      computeUnit: map['computeUnit'] == null ? null : (map['computeUnit']! as int).input(),
      databaseCount: map['databaseCount'] == null ? null : (map['databaseCount']! as int).input(),
      dbList: map['dbList'] == null ? null : (map['dbList']! as String).input(),
      delayNotice: map['delayNotice'] == null ? null : (map['delayNotice']! as bool).input(),
      delayPhone: map['delayPhone'] == null ? null : (map['delayPhone']! as String).input(),
      delayRuleTime: map['delayRuleTime'] == null ? null : (map['delayRuleTime']! as String).input(),
      destinationEndpointEngineName: map['destinationEndpointEngineName'] == null ? null : (map['destinationEndpointEngineName']! as String).input(),
      destinationRegion: map['destinationRegion'] == null ? null : (map['destinationRegion']! as String).input(),
      dtsInstanceId: map['dtsInstanceId'] == null ? null : (map['dtsInstanceId']! as String).input(),
      dtsJobName: map['dtsJobName'] == null ? null : (map['dtsJobName']! as String).input(),
      errorNotice: map['errorNotice'] == null ? null : (map['errorNotice']! as bool).input(),
      errorPhone: map['errorPhone'] == null ? null : (map['errorPhone']! as String).input(),
      instanceClass: map['instanceClass'] == null ? null : (map['instanceClass']! as String).input(),
      paymentDuration: map['paymentDuration'] == null ? null : (map['paymentDuration']! as int).input(),
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : (map['paymentDurationUnit']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      reserve: map['reserve'] == null ? null : (map['reserve']! as String).input(),
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] == null ? null : (map['sourceEndpointDatabaseName']! as String).input(),
      sourceEndpointEngineName: map['sourceEndpointEngineName'] == null ? null : (map['sourceEndpointEngineName']! as String).input(),
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] == null ? null : (map['sourceEndpointInstanceId']! as String).input(),
      sourceEndpointInstanceType: map['sourceEndpointInstanceType'] == null ? null : (map['sourceEndpointInstanceType']! as String).input(),
      sourceEndpointIp: map['sourceEndpointIp'] == null ? null : (map['sourceEndpointIp']! as String).input(),
      sourceEndpointOracleSid: map['sourceEndpointOracleSid'] == null ? null : (map['sourceEndpointOracleSid']! as String).input(),
      sourceEndpointOwnerId: map['sourceEndpointOwnerId'] == null ? null : (map['sourceEndpointOwnerId']! as String).input(),
      sourceEndpointPassword: map['sourceEndpointPassword'] == null ? null : (map['sourceEndpointPassword']! as String).input(),
      sourceEndpointPort: map['sourceEndpointPort'] == null ? null : (map['sourceEndpointPort']! as String).input(),
      sourceEndpointRegion: map['sourceEndpointRegion'] == null ? null : (map['sourceEndpointRegion']! as String).input(),
      sourceEndpointRole: map['sourceEndpointRole'] == null ? null : (map['sourceEndpointRole']! as String).input(),
      sourceEndpointUserName: map['sourceEndpointUserName'] == null ? null : (map['sourceEndpointUserName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      subscriptionDataTypeDdl: map['subscriptionDataTypeDdl'] == null ? null : (map['subscriptionDataTypeDdl']! as bool).input(),
      subscriptionDataTypeDml: map['subscriptionDataTypeDml'] == null ? null : (map['subscriptionDataTypeDml']! as bool).input(),
      subscriptionInstanceNetworkType: map['subscriptionInstanceNetworkType'] == null ? null : (map['subscriptionInstanceNetworkType']! as String).input(),
      subscriptionInstanceVpcId: map['subscriptionInstanceVpcId'] == null ? null : (map['subscriptionInstanceVpcId']! as String).input(),
      subscriptionInstanceVswitchId: map['subscriptionInstanceVswitchId'] == null ? null : (map['subscriptionInstanceVswitchId']! as String).input(),
      syncArchitecture: map['syncArchitecture'] == null ? null : (map['syncArchitecture']! as String).input(),
      synchronizationDirection: map['synchronizationDirection'] == null ? null : (map['synchronizationDirection']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

