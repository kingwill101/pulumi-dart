// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DbResourceGroup resources.
class DbResourceGroupState {
  /// The instance ID.> You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  final pulumi.Input<String>? dbInstanceId;
  /// Resource group configuration.
  final pulumi.Input<String>? resourceGroupConfig;
  /// Resource group name.
  final pulumi.Input<String>? resourceGroupName;
  /// Role List
  final pulumi.Input<List<String>>? roleLists;

  /// Creates a new [DbResourceGroupState].
  /// [dbInstanceId] The instance ID.> You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  /// [resourceGroupConfig] Resource group configuration.
  /// [resourceGroupName] Resource group name.
  /// [roleLists] Role List
  DbResourceGroupState({
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? resourceGroupConfig,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<String>>? roleLists,
  }) :
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      resourceGroupConfig = pulumi.Input.asOptionalInput<String>(resourceGroupConfig),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      roleLists = pulumi.Input.asOptionalInput<List<String>>(roleLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'resourceGroupConfig': ?resourceGroupConfig,
      'resourceGroupName': ?resourceGroupName,
      'roleLists': ?roleLists,
    };
  }

  factory DbResourceGroupState.fromMap(Map<String, dynamic> map) {
    return DbResourceGroupState(
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      resourceGroupConfig: map['resourceGroupConfig'] == null ? null : pulumi.Output.create<String>(map['resourceGroupConfig'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleLists: map['roleLists'] == null ? null : pulumi.Output.create<List<String>>((map['roleLists'] as List).cast<String>()),
    );
  }
}

