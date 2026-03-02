// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_groups_group_quota.dart';

class GetAppGroupsGroup {
  /// The ID of the App Group.
  final pulumi.Input<String> appGroupId;
  /// Application Group Name.
  final pulumi.Input<String> appGroupName;
  /// Billing model. Valid values:`compute_resource` and `qps`.
  final pulumi.Input<int> chargeWay;
  /// The commodity code.
  final pulumi.Input<String> commodityCode;
  /// The time of creation.
  final pulumi.Input<int> createTime;
  /// The version of Application Group Name.
  final pulumi.Input<String> currentVersion;
  /// The description of the resource.
  final pulumi.Input<String> description;
  /// Domain name.
  final pulumi.Input<String> domain;
  /// Expiration Time.
  final pulumi.Input<String> expireOn;
  /// Coarse deployment ID.
  final pulumi.Input<int> firstRankAlgoDeploymentId;
  /// Whether the quota status is under approval. Valid status:
  final pulumi.Input<int> hasPendingQuotaReviewTask;
  final pulumi.Input<String> id;
  /// The Instance ID.
  final pulumi.Input<String> instanceId;
  /// Locked state. Valid status: `Unlock`,`LockByExpiration`,`ManualLock`.
  final pulumi.Input<String> lockMode;
  /// Instance is automatically locked after expiration.
  final pulumi.Input<int> lockedByExpiration;
  /// The billing method of the resource. Valid values: `Subscription` and `PayAsYouGo`.
  final pulumi.Input<String> paymentType;
  /// Refine deployment ID in deployment.
  final pulumi.Input<int> pendingSecondRankAlgoDeploymentId;
  /// Unfinished order number.
  final pulumi.Input<String> processingOrderId;
  /// Whether the production is completed. Valid values:
  final pulumi.Input<int> produced;
  /// The Project ID.
  final pulumi.Input<String> projectId;
  /// Quota information.
  final pulumi.Input<List<GetAppGroupsGroupQuota>> quotas;
  /// The Resource Group ID.
  final pulumi.Input<String> resourceGroupId;
  /// Refine deployment ID.
  final pulumi.Input<int> secondRankAlgoDeploymentId;
  /// The status of the resource. Valid values: `producing`,`review_pending`,`config_pending`,`normal`,`frozen`.
  final pulumi.Input<String> status;
  /// The Switched time.
  final pulumi.Input<int> switchedTime;
  /// Application type. Valid Values: `standard`, `enhanced`.
  final pulumi.Input<String> type;

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
      'quotas': pulumi.Input.mapInputValue<List<GetAppGroupsGroupQuota>, List<Map<String, dynamic>>>(quotas, (value) => pulumi.Input.encodeList<GetAppGroupsGroupQuota, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': resourceGroupId,
      'secondRankAlgoDeploymentId': secondRankAlgoDeploymentId,
      'status': status,
      'switchedTime': switchedTime,
      'type': type,
    };
  }

  factory GetAppGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetAppGroupsGroup(
      appGroupId: (map['appGroupId'] as String).input(),
      appGroupName: (map['appGroupName'] as String).input(),
      chargeWay: (map['chargeWay'] as int).input(),
      commodityCode: (map['commodityCode'] as String).input(),
      createTime: (map['createTime'] as int).input(),
      currentVersion: (map['currentVersion'] as String).input(),
      description: (map['description'] as String).input(),
      domain: (map['domain'] as String).input(),
      expireOn: (map['expireOn'] as String).input(),
      firstRankAlgoDeploymentId: (map['firstRankAlgoDeploymentId'] as int).input(),
      hasPendingQuotaReviewTask: (map['hasPendingQuotaReviewTask'] as int).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      lockedByExpiration: (map['lockedByExpiration'] as int).input(),
      paymentType: (map['paymentType'] as String).input(),
      pendingSecondRankAlgoDeploymentId: (map['pendingSecondRankAlgoDeploymentId'] as int).input(),
      processingOrderId: (map['processingOrderId'] as String).input(),
      produced: (map['produced'] as int).input(),
      projectId: (map['projectId'] as String).input(),
      quotas: (pulumi.Input.decodeList<GetAppGroupsGroupQuota>(map['quotas'], (value) => GetAppGroupsGroupQuota.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      secondRankAlgoDeploymentId: (map['secondRankAlgoDeploymentId'] as int).input(),
      status: (map['status'] as String).input(),
      switchedTime: (map['switchedTime'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

