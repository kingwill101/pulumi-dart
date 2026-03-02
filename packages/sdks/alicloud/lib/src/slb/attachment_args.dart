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
    this.backendServers,
    this.deleteProtectionValidation,
    required this.instanceIds,
    required this.loadBalancerId,
    this.serverType,
    this.weight,
  });

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
      backendServers: map['backendServers'] == null ? null : (map['backendServers']! as String).input(),
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : (map['deleteProtectionValidation']! as bool).input(),
      instanceIds: ((map['instanceIds'] as List).cast<String>()).input(),
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      serverType: map['serverType'] == null ? null : (map['serverType']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

