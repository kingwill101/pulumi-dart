// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_attachment_attachment_args_doc}
/// The set of arguments for Attachment.
/// {@endtemplate}
/// {@macro pulumi_slb_attachment_attachment_args_doc}
class AttachmentArgs {
  /// The backend servers of the load balancer.
  final pulumi.Input<String>? backendServers;
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// A list of instance ids to added backend server in the SLB.
  final pulumi.Input<List<String>> instanceIds;
  /// ID of the load balancer.
  final pulumi.Input<String> loadBalancerId;
  /// Type of the instances. Valid value ecs, eni. Default to ecs.
  final pulumi.Input<String>? serverType;
  /// Weight of the instances. Valid value range: [0-100]. Default to 100.
  final pulumi.Input<int>? weight;

  /// Creates a new [AttachmentArgs].
  /// [backendServers] The backend servers of the load balancer.
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  /// [instanceIds] A list of instance ids to added backend server in the SLB.
  /// [loadBalancerId] ID of the load balancer.
  /// [serverType] Type of the instances. Valid value ecs, eni. Default to ecs.
  /// [weight] Weight of the instances. Valid value range: [0-100]. Default to 100.
  AttachmentArgs({
    pulumi.Output<String>? backendServers,
    pulumi.Output<bool>? deleteProtectionValidation,
    required pulumi.Output<List<String>> instanceIds,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<String>? serverType,
    pulumi.Output<int>? weight,
  }) :
      backendServers = pulumi.Input.asOptionalInput<String>(backendServers),
      deleteProtectionValidation = pulumi.Input.asOptionalInput<bool>(deleteProtectionValidation),
      instanceIds = pulumi.Input.asInput<List<String>>(instanceIds),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      serverType = pulumi.Input.asOptionalInput<String>(serverType),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendServers': ?backendServers,
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'instanceIds': instanceIds,
      'loadBalancerId': loadBalancerId,
      'serverType': ?serverType,
      'weight': ?weight,
    };
  }

  factory AttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentArgs(
      backendServers: map['backendServers'] == null ? null : pulumi.Output.create<String>(map['backendServers'] as String),
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : pulumi.Output.create<bool>(map['deleteProtectionValidation'] as bool),
      instanceIds: pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      serverType: map['serverType'] == null ? null : pulumi.Output.create<String>(map['serverType'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

