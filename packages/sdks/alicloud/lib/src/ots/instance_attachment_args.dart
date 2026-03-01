// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_instance_attachment_instance_attachment_args_doc}
/// The set of arguments for InstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_ots_instance_attachment_instance_attachment_args_doc}
class InstanceAttachmentArgs {
  /// The name of the OTS instance.
  final pulumi.Input<String> instanceName;
  /// The name of attaching VPC to instance. It can only contain letters and numbers, must start with a letter, and is limited to 3-16 characters in length.
  final pulumi.Input<String> vpcName;
  /// The ID of attaching VSwitch to instance.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [InstanceAttachmentArgs].
  /// [instanceName] The name of the OTS instance.
  /// [vpcName] The name of attaching VPC to instance. It can only contain letters and numbers, must start with a letter, and is limited to 3-16 characters in length.
  /// [vswitchId] The ID of attaching VSwitch to instance.
  InstanceAttachmentArgs({
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> vpcName,
    required pulumi.Output<String> vswitchId,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      vpcName = pulumi.Input.asInput<String>(vpcName),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'vpcName': vpcName,
      'vswitchId': vswitchId,
    };
  }

  factory InstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentArgs(
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      vpcName: pulumi.Output.create<String>(map['vpcName'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

