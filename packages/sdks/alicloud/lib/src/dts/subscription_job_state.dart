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
      checkpoint: (() {
        final guardedValue = map['checkpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeUnit: (() {
        final guardedValue = map['computeUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      databaseCount: (() {
        final guardedValue = map['databaseCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbList: (() {
        final guardedValue = map['dbList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      delayNotice: (() {
        final guardedValue = map['delayNotice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      delayPhone: (() {
        final guardedValue = map['delayPhone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      delayRuleTime: (() {
        final guardedValue = map['delayRuleTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEndpointEngineName: (() {
        final guardedValue = map['destinationEndpointEngineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationRegion: (() {
        final guardedValue = map['destinationRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dtsInstanceId: (() {
        final guardedValue = map['dtsInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dtsJobName: (() {
        final guardedValue = map['dtsJobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorNotice: (() {
        final guardedValue = map['errorNotice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      errorPhone: (() {
        final guardedValue = map['errorPhone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceClass: (() {
        final guardedValue = map['instanceClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentDuration: (() {
        final guardedValue = map['paymentDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      paymentDurationUnit: (() {
        final guardedValue = map['paymentDurationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reserve: (() {
        final guardedValue = map['reserve'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointDatabaseName: (() {
        final guardedValue = map['sourceEndpointDatabaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointEngineName: (() {
        final guardedValue = map['sourceEndpointEngineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointInstanceId: (() {
        final guardedValue = map['sourceEndpointInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointInstanceType: (() {
        final guardedValue = map['sourceEndpointInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointIp: (() {
        final guardedValue = map['sourceEndpointIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointOracleSid: (() {
        final guardedValue = map['sourceEndpointOracleSid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointOwnerId: (() {
        final guardedValue = map['sourceEndpointOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointPassword: (() {
        final guardedValue = map['sourceEndpointPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointPort: (() {
        final guardedValue = map['sourceEndpointPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointRegion: (() {
        final guardedValue = map['sourceEndpointRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointRole: (() {
        final guardedValue = map['sourceEndpointRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceEndpointUserName: (() {
        final guardedValue = map['sourceEndpointUserName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionDataTypeDdl: (() {
        final guardedValue = map['subscriptionDataTypeDdl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subscriptionDataTypeDml: (() {
        final guardedValue = map['subscriptionDataTypeDml'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subscriptionInstanceNetworkType: (() {
        final guardedValue = map['subscriptionInstanceNetworkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionInstanceVpcId: (() {
        final guardedValue = map['subscriptionInstanceVpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionInstanceVswitchId: (() {
        final guardedValue = map['subscriptionInstanceVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      syncArchitecture: (() {
        final guardedValue = map['syncArchitecture'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      synchronizationDirection: (() {
        final guardedValue = map['synchronizationDirection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
