// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DeployGroup resources.
class DeployGroupState {
  /// The ID of the application that you want to deploy.
  final pulumi.Input<String>? appId;

  /// The name of the instance group that you want to create.
  final pulumi.Input<String>? groupName;

  /// The type of the instance group that you want to create. Valid values: 0: Default group. 1: Phased release is disabled for traffic management. 2: Phased release is enabled for traffic management.
  final pulumi.Input<int>? groupType;

  /// Creates a new [DeployGroupState].
  /// [appId] The ID of the application that you want to deploy.
  /// [groupName] The name of the instance group that you want to create.
  /// [groupType] The type of the instance group that you want to create. Valid values: 0: Default group. 1: Phased release is disabled for traffic management. 2: Phased release is enabled for traffic management.
  DeployGroupState({this.appId, this.groupName, this.groupType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'groupName': ?groupName,
      'groupType': ?groupType,
    };
  }

  factory DeployGroupState.fromMap(Map<String, dynamic> map) {
    return DeployGroupState(
      appId: (() {
        final guardedValue = map['appId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupType: (() {
        final guardedValue = map['groupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
