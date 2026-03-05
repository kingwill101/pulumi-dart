// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DbResourceGroup resources.
class DbResourceGroupState {
  /// The instance ID.&gt; You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  final pulumi.Input<String>? dbInstanceId;
  /// Resource group configuration.
  final pulumi.Input<String>? resourceGroupConfig;
  /// Resource group name.
  final pulumi.Input<String>? resourceGroupName;
  /// Role List
  final pulumi.Input<List<String>>? roleLists;

  /// Creates a new [DbResourceGroupState].
  /// [dbInstanceId] The instance ID.&gt; You can call the DescribeDBInstances operation to view the instance IDs of all AnalyticDB PostgreSQL instances in the target region.
  /// [resourceGroupConfig] Resource group configuration.
  /// [resourceGroupName] Resource group name.
  /// [roleLists] Role List
  DbResourceGroupState({
    this.dbInstanceId,
    this.resourceGroupConfig,
    this.resourceGroupName,
    this.roleLists,
  });

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
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupConfig: (() { final guardedValue = map['resourceGroupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleLists: (() { final guardedValue = map['roleLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

