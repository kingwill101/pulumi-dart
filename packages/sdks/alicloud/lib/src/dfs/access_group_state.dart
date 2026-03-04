// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessGroup resources.
class AccessGroupState {
  /// The permission group name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  final pulumi.Input<String>? accessGroupName;

  /// The creation time of the permission group resource.
  final pulumi.Input<String>? createTime;

  /// The permission group description.  No more than 32 characters in length.
  final pulumi.Input<String>? description;

  /// The permission group type. Only VPC (VPC) is supported.
  final pulumi.Input<String>? networkType;

  /// Creates a new [AccessGroupState].
  /// [accessGroupName] The permission group name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  /// [createTime] The creation time of the permission group resource.
  /// [description] The permission group description.  No more than 32 characters in length.
  /// [networkType] The permission group type. Only VPC (VPC) is supported.
  AccessGroupState({
    this.accessGroupName,
    this.createTime,
    this.description,
    this.networkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'createTime': ?createTime,
      'description': ?description,
      'networkType': ?networkType,
    };
  }

  factory AccessGroupState.fromMap(Map<String, dynamic> map) {
    return AccessGroupState(
      accessGroupName: (() {
        final guardedValue = map['accessGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
