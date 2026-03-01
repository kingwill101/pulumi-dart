// ignore_for_file: unused_element, unnecessary_cast


class GetEcsDeploymentSetsSet {
  /// The time when the deployment set was created.
  final String createTime;
  /// The ID of the Deployment Set.
  final String deploymentSetId;
  /// The name of the deployment set.
  final String deploymentSetName;
  /// The description of the deployment set.
  final String description;
  /// The deployment domain.
  final String domain;
  /// The deployment granularity.
  final String granularity;
  /// The ID of the Deployment Set.
  final String id;
  /// The number of instances in the deployment set.
  final int instanceAmount;
  /// The IDs of the instances in the deployment set.
  final List<String> instanceIds;
  /// The deployment strategy.
  final String strategy;

  /// Creates a new [GetEcsDeploymentSetsSet].
  /// [createTime] The time when the deployment set was created.
  /// [deploymentSetId] The ID of the Deployment Set.
  /// [deploymentSetName] The name of the deployment set.
  /// [description] The description of the deployment set.
  /// [domain] The deployment domain.
  /// [granularity] The deployment granularity.
  /// [id] The ID of the Deployment Set.
  /// [instanceAmount] The number of instances in the deployment set.
  /// [instanceIds] The IDs of the instances in the deployment set.
  /// [strategy] The deployment strategy.
  GetEcsDeploymentSetsSet({
    required this.createTime,
    required this.deploymentSetId,
    required this.deploymentSetName,
    required this.description,
    required this.domain,
    required this.granularity,
    required this.id,
    required this.instanceAmount,
    required this.instanceIds,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deploymentSetId': deploymentSetId,
      'deploymentSetName': deploymentSetName,
      'description': description,
      'domain': domain,
      'granularity': granularity,
      'id': id,
      'instanceAmount': instanceAmount,
      'instanceIds': instanceIds,
      'strategy': strategy,
    };
  }

  factory GetEcsDeploymentSetsSet.fromMap(Map<String, dynamic> map) {
    return GetEcsDeploymentSetsSet(
      createTime: map['createTime'] as String,
      deploymentSetId: map['deploymentSetId'] as String,
      deploymentSetName: map['deploymentSetName'] as String,
      description: map['description'] as String,
      domain: map['domain'] as String,
      granularity: map['granularity'] as String,
      id: map['id'] as String,
      instanceAmount: map['instanceAmount'] as int,
      instanceIds: (map['instanceIds'] as List).cast<String>(),
      strategy: map['strategy'] as String,
    );
  }
}

