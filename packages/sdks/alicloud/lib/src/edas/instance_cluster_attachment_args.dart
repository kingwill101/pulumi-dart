// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_instance_cluster_attachment_instance_cluster_attachment_args_doc}
/// The set of arguments for InstanceClusterAttachment.
/// {@endtemplate}
/// {@macro pulumi_edas_instance_cluster_attachment_instance_cluster_attachment_args_doc}
class InstanceClusterAttachmentArgs {
  /// The ID of the cluster that you want to create the application.
  final pulumi.Input<String> clusterId;
  /// The ID of instance. Type: list.
  final pulumi.Input<List<String>> instanceIds;

  /// Creates a new [InstanceClusterAttachmentArgs].
  /// [clusterId] The ID of the cluster that you want to create the application.
  /// [instanceIds] The ID of instance. Type: list.
  InstanceClusterAttachmentArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<List<String>> instanceIds,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      instanceIds = pulumi.Input.asInput<List<String>>(instanceIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'instanceIds': instanceIds,
    };
  }

  factory InstanceClusterAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceClusterAttachmentArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      instanceIds: pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
    );
  }
}

