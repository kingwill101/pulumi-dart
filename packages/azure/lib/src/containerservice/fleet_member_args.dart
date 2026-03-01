// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_fleet_member_fleet_member_args_doc}
/// The set of arguments for FleetMember.
/// {@endtemplate}
/// {@macro pulumi_containerservice_fleet_member_fleet_member_args_doc}
class FleetMemberArgs {
  /// The group this member belongs to for multi-cluster update management.
  final pulumi.Input<String>? group;
  /// The ARM resource ID of the cluster that joins the Fleet. Changing this forces a new Kubernetes Fleet Member to be created.
  final pulumi.Input<String> kubernetesClusterId;
  /// Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member should exist. Changing this forces a new Kubernetes Fleet Member to be created.
  final pulumi.Input<String> kubernetesFleetId;
  /// Specifies the name of this Kubernetes Fleet Member. Changing this forces a new Kubernetes Fleet Member to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [FleetMemberArgs].
  /// [group] The group this member belongs to for multi-cluster update management.
  /// [kubernetesClusterId] The ARM resource ID of the cluster that joins the Fleet. Changing this forces a new Kubernetes Fleet Member to be created.
  /// [kubernetesFleetId] Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member should exist. Changing this forces a new Kubernetes Fleet Member to be created.
  /// [name] Specifies the name of this Kubernetes Fleet Member. Changing this forces a new Kubernetes Fleet Member to be created.
  FleetMemberArgs({
    String? group,
    required String kubernetesClusterId,
    required String kubernetesFleetId,
    String? name,
  }) :
      group = pulumi.Input.asOptionalInput<String>(group),
      kubernetesClusterId = pulumi.Input.asInput<String>(kubernetesClusterId),
      kubernetesFleetId = pulumi.Input.asInput<String>(kubernetesFleetId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'kubernetesClusterId': kubernetesClusterId,
      'kubernetesFleetId': kubernetesFleetId,
      'name': ?name,
    };
  }

  factory FleetMemberArgs.fromMap(Map<String, dynamic> map) {
    return FleetMemberArgs(
      group: map['group'] == null ? null : map['group'] as String,
      kubernetesClusterId: map['kubernetesClusterId'] as String,
      kubernetesFleetId: map['kubernetesFleetId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

