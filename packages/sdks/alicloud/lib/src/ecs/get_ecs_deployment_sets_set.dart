// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsDeploymentSetsSet {
  /// The time when the deployment set was created.
  final pulumi.Input<String> createTime;
  /// The ID of the Deployment Set.
  final pulumi.Input<String> deploymentSetId;
  /// The name of the deployment set.
  final pulumi.Input<String> deploymentSetName;
  /// The description of the deployment set.
  final pulumi.Input<String> description;
  /// The deployment domain.
  final pulumi.Input<String> domain;
  /// The deployment granularity.
  final pulumi.Input<String> granularity;
  /// The ID of the Deployment Set.
  final pulumi.Input<String> id;
  /// The number of instances in the deployment set.
  final pulumi.Input<int> instanceAmount;
  /// The IDs of the instances in the deployment set.
  final pulumi.Input<List<String>> instanceIds;
  /// The deployment strategy.
  final pulumi.Input<String> strategy;

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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deploymentSetId: pulumi.Input.fromValue(map['deploymentSetId'] as String),
      deploymentSetName: pulumi.Input.fromValue(map['deploymentSetName'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      granularity: pulumi.Input.fromValue(map['granularity'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceAmount: pulumi.Input.fromValue(map['instanceAmount'] as int),
      instanceIds: pulumi.Input.fromValue((map['instanceIds'] as List).cast<String>()),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
    );
  }
}

