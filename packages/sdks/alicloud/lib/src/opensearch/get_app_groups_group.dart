// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_groups_group_quota.dart';

class GetAppGroupsGroup {
  /// The ID of the App Group.
  final String appGroupId;
  /// Application Group Name.
  final String appGroupName;
  /// Billing model. Valid values:`compute_resource` and `qps`.
  final int chargeWay;
  /// The commodity code.
  final String commodityCode;
  /// The time of creation.
  final int createTime;
  /// The version of Application Group Name.
  final String currentVersion;
  /// The description of the resource.
  final String description;
  /// Domain name.
  final String domain;
  /// Expiration Time.
  final String expireOn;
  /// Coarse deployment ID.
  final int firstRankAlgoDeploymentId;
  /// Whether the quota status is under approval. Valid status:
  final int hasPendingQuotaReviewTask;
  final String id;
  /// The Instance ID.
  final String instanceId;
  /// Locked state. Valid status: `Unlock`,`LockByExpiration`,`ManualLock`.
  final String lockMode;
  /// Instance is automatically locked after expiration.
  final int lockedByExpiration;
  /// The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  final String paymentType;
  /// Refine deployment ID in deployment.
  final int pendingSecondRankAlgoDeploymentId;
  /// Unfinished order number.
  final String processingOrderId;
  /// Whether the production is completed. Valid values:
  final int produced;
  /// The Project ID.
  final String projectId;
  /// Quota information.
  final List<GetAppGroupsGroupQuota> quotas;
  /// The Resource Group ID.
  final String resourceGroupId;
  /// Refine deployment ID.
  final int secondRankAlgoDeploymentId;
  /// The status of the resource. Valid values: `producing`,`review_pending`,`config_pending`,`normal`,`frozen`.
  final String status;
  /// The Switched time.
  final int switchedTime;
  /// Application type. Valid Values: `standard`, `enhanced`.
  final String type;

  /// Creates a new [GetAppGroupsGroup].
  /// [appGroupId] The ID of the App Group.
  /// [appGroupName] Application Group Name.
  /// [chargeWay] Billing model. Valid values:`compute_resource` and `qps`.
  /// [commodityCode] The commodity code.
  /// [createTime] The time of creation.
  /// [currentVersion] The version of Application Group Name.
  /// [description] The description of the resource.
  /// [domain] Domain name.
  /// [expireOn] Expiration Time.
  /// [firstRankAlgoDeploymentId] Coarse deployment ID.
  /// [hasPendingQuotaReviewTask] Whether the quota status is under approval. Valid status:
  /// [id] Required.
  /// [instanceId] The Instance ID.
  /// [lockMode] Locked state. Valid status: `Unlock`,`LockByExpiration`,`ManualLock`.
  /// [lockedByExpiration] Instance is automatically locked after expiration.
  /// [paymentType] The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  /// [pendingSecondRankAlgoDeploymentId] Refine deployment ID in deployment.
  /// [processingOrderId] Unfinished order number.
  /// [produced] Whether the production is completed. Valid values:
  /// [projectId] The Project ID.
  /// [quotas] Quota information.
  /// [resourceGroupId] The Resource Group ID.
  /// [secondRankAlgoDeploymentId] Refine deployment ID.
  /// [status] The status of the resource. Valid values: `producing`,`review_pending`,`config_pending`,`normal`,`frozen`.
  /// [switchedTime] The Switched time.
  /// [type] Application type. Valid Values: `standard`, `enhanced`.
  GetAppGroupsGroup({
    required this.appGroupId,
    required this.appGroupName,
    required this.chargeWay,
    required this.commodityCode,
    required this.createTime,
    required this.currentVersion,
    required this.description,
    required this.domain,
    required this.expireOn,
    required this.firstRankAlgoDeploymentId,
    required this.hasPendingQuotaReviewTask,
    required this.id,
    required this.instanceId,
    required this.lockMode,
    required this.lockedByExpiration,
    required this.paymentType,
    required this.pendingSecondRankAlgoDeploymentId,
    required this.processingOrderId,
    required this.produced,
    required this.projectId,
    required this.quotas,
    required this.resourceGroupId,
    required this.secondRankAlgoDeploymentId,
    required this.status,
    required this.switchedTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGroupId': appGroupId,
      'appGroupName': appGroupName,
      'chargeWay': chargeWay,
      'commodityCode': commodityCode,
      'createTime': createTime,
      'currentVersion': currentVersion,
      'description': description,
      'domain': domain,
      'expireOn': expireOn,
      'firstRankAlgoDeploymentId': firstRankAlgoDeploymentId,
      'hasPendingQuotaReviewTask': hasPendingQuotaReviewTask,
      'id': id,
      'instanceId': instanceId,
      'lockMode': lockMode,
      'lockedByExpiration': lockedByExpiration,
      'paymentType': paymentType,
      'pendingSecondRankAlgoDeploymentId': pendingSecondRankAlgoDeploymentId,
      'processingOrderId': processingOrderId,
      'produced': produced,
      'projectId': projectId,
      'quotas': pulumi.Input.encodeList<GetAppGroupsGroupQuota, Map<String, dynamic>>(quotas, (value) => value.toMap()),
      'resourceGroupId': resourceGroupId,
      'secondRankAlgoDeploymentId': secondRankAlgoDeploymentId,
      'status': status,
      'switchedTime': switchedTime,
      'type': type,
    };
  }

  factory GetAppGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetAppGroupsGroup(
      appGroupId: map['appGroupId'] as String,
      appGroupName: map['appGroupName'] as String,
      chargeWay: map['chargeWay'] as int,
      commodityCode: map['commodityCode'] as String,
      createTime: map['createTime'] as int,
      currentVersion: map['currentVersion'] as String,
      description: map['description'] as String,
      domain: map['domain'] as String,
      expireOn: map['expireOn'] as String,
      firstRankAlgoDeploymentId: map['firstRankAlgoDeploymentId'] as int,
      hasPendingQuotaReviewTask: map['hasPendingQuotaReviewTask'] as int,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      lockMode: map['lockMode'] as String,
      lockedByExpiration: map['lockedByExpiration'] as int,
      paymentType: map['paymentType'] as String,
      pendingSecondRankAlgoDeploymentId: map['pendingSecondRankAlgoDeploymentId'] as int,
      processingOrderId: map['processingOrderId'] as String,
      produced: map['produced'] as int,
      projectId: map['projectId'] as String,
      quotas: pulumi.Input.decodeList<GetAppGroupsGroupQuota>(map['quotas'], (value) => GetAppGroupsGroupQuota.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] as String,
      secondRankAlgoDeploymentId: map['secondRankAlgoDeploymentId'] as int,
      status: map['status'] as String,
      switchedTime: map['switchedTime'] as int,
      type: map['type'] as String,
    );
  }
}

