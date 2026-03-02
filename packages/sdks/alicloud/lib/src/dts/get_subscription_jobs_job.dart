// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscription_jobs_job_subscription_host.dart';

class GetSubscriptionJobsJob {
  /// Subscription start time in Unix timestamp format.
  final pulumi.Input<String> checkpoint;
  /// The creation time of subscription job instance.
  final pulumi.Input<String> createTime;
  /// Subscription object, in the format of JSON strings.
  final pulumi.Input<String> dbList;
  /// The ID of subscription job instance.
  final pulumi.Input<String> dtsInstanceId;
  /// The ID of subscription job instance.
  final pulumi.Input<String> dtsJobId;
  /// The name of subscription job instance.
  final pulumi.Input<String> dtsJobName;
  /// The Expiration Time. Formatting with yyyy-MM-ddTHH:mm:ssZ(UTC time).
  final pulumi.Input<String> expireTime;
  /// The ID of the Subscription Job.
  final pulumi.Input<String> id;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  final pulumi.Input<String> paymentType;
  /// To subscribe to the name of the database.
  final pulumi.Input<String> sourceEndpointDatabaseName;
  /// The source database type value is MySQL or Oracle.
  final pulumi.Input<String> sourceEndpointEngineName;
  /// The ID of source instance. Only when the type of source database instance was RDS MySQL, PolarDB-X 1.0, PolarDB MySQL, this parameter can be available and must be set.
  final pulumi.Input<String> sourceEndpointInstanceId;
  /// The type of source instance. Valid values: `RDS`, `PolarDB`, `DRDS`, `LocalInstance`, `ECS`, `Express`, `CEN`, `dg`.
  final pulumi.Input<String> sourceEndpointInstanceType;
  /// The IP of source endpoint.
  final pulumi.Input<String> sourceEndpointIp;
  /// The SID of Oracle Database. When the source database is self-built Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  final pulumi.Input<String> sourceEndpointOracleSid;
  /// The Alibaba Cloud account ID to which the source instance belongs. This parameter is only available when configuring data subscriptions across Alibaba Cloud accounts and must be passed in.
  final pulumi.Input<String> sourceEndpointOwnerId;
  /// The  port of source database.
  final pulumi.Input<String> sourceEndpointPort;
  /// The region of source database.
  final pulumi.Input<String> sourceEndpointRegion;
  /// Both the authorization roles. When the source instance and configure subscriptions task of the Alibaba Cloud account is not the same as the need to pass the parameter, to specify the source of the authorization roles, to allow configuration subscription task of the Alibaba Cloud account to access the source of the source instance information.
  final pulumi.Input<String> sourceEndpointRole;
  /// The username of source database instance account.
  final pulumi.Input<String> sourceEndpointUserName;
  /// The status of the task. Valid values: `NotStarted`, `Normal`, `Abnormal`. When a task created, it is in this state of `NotStarted`. You can specify this state of `Normal` to start the job, and specify this state of `Abnormal` to stop the job.
  final pulumi.Input<String> status;
  /// Whether to subscribe the DDL type of data. Valid values: `true`, `false`.
  final pulumi.Input<bool> subscriptionDataTypeDdl;
  /// Whether to subscribe the DML type of data. Valid values: `true`, `false`.
  final pulumi.Input<bool> subscriptionDataTypeDml;
  /// Network information.
  final pulumi.Input<List<GetSubscriptionJobsJobSubscriptionHost>> subscriptionHosts;
  /// The type of subscription instance network. Valid value: `classic`, `vpc`.
  final pulumi.Input<String> subscriptionInstanceNetworkType;
  /// The ID of subscription instance vpc.
  final pulumi.Input<String> subscriptionInstanceVpcId;
  /// The ID of subscription instance vswitch.
  final pulumi.Input<String> subscriptionInstanceVswitchId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetSubscriptionJobsJob].
  /// [checkpoint] Subscription start time in Unix timestamp format.
  /// [createTime] The creation time of subscription job instance.
  /// [dbList] Subscription object, in the format of JSON strings.
  /// [dtsInstanceId] The ID of subscription job instance.
  /// [dtsJobId] The ID of subscription job instance.
  /// [dtsJobName] The name of subscription job instance.
  /// [expireTime] The Expiration Time. Formatting with yyyy-MM-ddTHH:mm:ssZ(UTC time).
  /// [id] The ID of the Subscription Job.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  /// [sourceEndpointDatabaseName] To subscribe to the name of the database.
  /// [sourceEndpointEngineName] The source database type value is MySQL or Oracle.
  /// [sourceEndpointInstanceId] The ID of source instance. Only when the type of source database instance was RDS MySQL, PolarDB-X 1.0, PolarDB MySQL, this parameter can be available and must be set.
  /// [sourceEndpointInstanceType] The type of source instance. Valid values: `RDS`, `PolarDB`, `DRDS`, `LocalInstance`, `ECS`, `Express`, `CEN`, `dg`.
  /// [sourceEndpointIp] The IP of source endpoint.
  /// [sourceEndpointOracleSid] The SID of Oracle Database. When the source database is self-built Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  /// [sourceEndpointOwnerId] The Alibaba Cloud account ID to which the source instance belongs. This parameter is only available when configuring data subscriptions across Alibaba Cloud accounts and must be passed in.
  /// [sourceEndpointPort] The  port of source database.
  /// [sourceEndpointRegion] The region of source database.
  /// [sourceEndpointRole] Both the authorization roles. When the source instance and configure subscriptions task of the Alibaba Cloud account is not the same as the need to pass the parameter, to specify the source of the authorization roles, to allow configuration subscription task of the Alibaba Cloud account to access the source of the source instance information.
  /// [sourceEndpointUserName] The username of source database instance account.
  /// [status] The status of the task. Valid values: `NotStarted`, `Normal`, `Abnormal`. When a task created, it is in this state of `NotStarted`. You can specify this state of `Normal` to start the job, and specify this state of `Abnormal` to stop the job.
  /// [subscriptionDataTypeDdl] Whether to subscribe the DDL type of data. Valid values: `true`, `false`.
  /// [subscriptionDataTypeDml] Whether to subscribe the DML type of data. Valid values: `true`, `false`.
  /// [subscriptionHosts] Network information.
  /// [subscriptionInstanceNetworkType] The type of subscription instance network. Valid value: `classic`, `vpc`.
  /// [subscriptionInstanceVpcId] The ID of subscription instance vpc.
  /// [subscriptionInstanceVswitchId] The ID of subscription instance vswitch.
  /// [tags] The tag of the resource.
  GetSubscriptionJobsJob({
    required this.checkpoint,
    required this.createTime,
    required this.dbList,
    required this.dtsInstanceId,
    required this.dtsJobId,
    required this.dtsJobName,
    required this.expireTime,
    required this.id,
    required this.paymentType,
    required this.sourceEndpointDatabaseName,
    required this.sourceEndpointEngineName,
    required this.sourceEndpointInstanceId,
    required this.sourceEndpointInstanceType,
    required this.sourceEndpointIp,
    required this.sourceEndpointOracleSid,
    required this.sourceEndpointOwnerId,
    required this.sourceEndpointPort,
    required this.sourceEndpointRegion,
    required this.sourceEndpointRole,
    required this.sourceEndpointUserName,
    required this.status,
    required this.subscriptionDataTypeDdl,
    required this.subscriptionDataTypeDml,
    required this.subscriptionHosts,
    required this.subscriptionInstanceNetworkType,
    required this.subscriptionInstanceVpcId,
    required this.subscriptionInstanceVswitchId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpoint': checkpoint,
      'createTime': createTime,
      'dbList': dbList,
      'dtsInstanceId': dtsInstanceId,
      'dtsJobId': dtsJobId,
      'dtsJobName': dtsJobName,
      'expireTime': expireTime,
      'id': id,
      'paymentType': paymentType,
      'sourceEndpointDatabaseName': sourceEndpointDatabaseName,
      'sourceEndpointEngineName': sourceEndpointEngineName,
      'sourceEndpointInstanceId': sourceEndpointInstanceId,
      'sourceEndpointInstanceType': sourceEndpointInstanceType,
      'sourceEndpointIp': sourceEndpointIp,
      'sourceEndpointOracleSid': sourceEndpointOracleSid,
      'sourceEndpointOwnerId': sourceEndpointOwnerId,
      'sourceEndpointPort': sourceEndpointPort,
      'sourceEndpointRegion': sourceEndpointRegion,
      'sourceEndpointRole': sourceEndpointRole,
      'sourceEndpointUserName': sourceEndpointUserName,
      'status': status,
      'subscriptionDataTypeDdl': subscriptionDataTypeDdl,
      'subscriptionDataTypeDml': subscriptionDataTypeDml,
      'subscriptionHosts': pulumi.Input.mapInputValue<List<GetSubscriptionJobsJobSubscriptionHost>, List<Map<String, dynamic>>>(subscriptionHosts, (value) => pulumi.Input.encodeList<GetSubscriptionJobsJobSubscriptionHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptionInstanceNetworkType': subscriptionInstanceNetworkType,
      'subscriptionInstanceVpcId': subscriptionInstanceVpcId,
      'subscriptionInstanceVswitchId': subscriptionInstanceVswitchId,
      'tags': tags,
    };
  }

  factory GetSubscriptionJobsJob.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionJobsJob(
      checkpoint: (map['checkpoint'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dbList: (map['dbList'] as String).input(),
      dtsInstanceId: (map['dtsInstanceId'] as String).input(),
      dtsJobId: (map['dtsJobId'] as String).input(),
      dtsJobName: (map['dtsJobName'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      sourceEndpointDatabaseName: (map['sourceEndpointDatabaseName'] as String).input(),
      sourceEndpointEngineName: (map['sourceEndpointEngineName'] as String).input(),
      sourceEndpointInstanceId: (map['sourceEndpointInstanceId'] as String).input(),
      sourceEndpointInstanceType: (map['sourceEndpointInstanceType'] as String).input(),
      sourceEndpointIp: (map['sourceEndpointIp'] as String).input(),
      sourceEndpointOracleSid: (map['sourceEndpointOracleSid'] as String).input(),
      sourceEndpointOwnerId: (map['sourceEndpointOwnerId'] as String).input(),
      sourceEndpointPort: (map['sourceEndpointPort'] as String).input(),
      sourceEndpointRegion: (map['sourceEndpointRegion'] as String).input(),
      sourceEndpointRole: (map['sourceEndpointRole'] as String).input(),
      sourceEndpointUserName: (map['sourceEndpointUserName'] as String).input(),
      status: (map['status'] as String).input(),
      subscriptionDataTypeDdl: (map['subscriptionDataTypeDdl'] as bool).input(),
      subscriptionDataTypeDml: (map['subscriptionDataTypeDml'] as bool).input(),
      subscriptionHosts: (pulumi.Input.decodeList<GetSubscriptionJobsJobSubscriptionHost>(map['subscriptionHosts'], (value) => GetSubscriptionJobsJobSubscriptionHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subscriptionInstanceNetworkType: (map['subscriptionInstanceNetworkType'] as String).input(),
      subscriptionInstanceVpcId: (map['subscriptionInstanceVpcId'] as String).input(),
      subscriptionInstanceVswitchId: (map['subscriptionInstanceVswitchId'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

