// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAttachment resources.
class InstanceAttachmentState {
  /// The name of the OTS instance.
  final pulumi.Input<String>? instanceName;

  /// The ID of attaching VPC to instance.
  final pulumi.Input<String>? vpcId;

  /// The name of attaching VPC to instance. It can only contain letters and numbers, must start with a letter, and is limited to 3-16 characters in length.
  final pulumi.Input<String>? vpcName;

  /// The ID of attaching VSwitch to instance.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceAttachmentState].
  /// [instanceName] The name of the OTS instance.
  /// [vpcId] The ID of attaching VPC to instance.
  /// [vpcName] The name of attaching VPC to instance. It can only contain letters and numbers, must start with a letter, and is limited to 3-16 characters in length.
  /// [vswitchId] The ID of attaching VSwitch to instance.
  InstanceAttachmentState({
    this.instanceName,
    this.vpcId,
    this.vpcName,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'vpcId': ?vpcId,
      'vpcName': ?vpcName,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentState(
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcName: (() {
        final guardedValue = map['vpcName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
