// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessKubernetesDeleteOption {
  /// The deletion mode of the cluster. Different resources may have different default behavior, see `resource_type` for details. Valid values:
  final pulumi.Input<String>? deleteMode;
  /// The type of resources that are created by cluster. Valid values:
  /// - `SLB`: SLB resources created by the Nginx Ingress Service, default behavior is to delete, option to retain is available.
  /// - `ALB`: ALB resources created by the ALB Ingress Controller, default behavior is to retain, option to delete is available.
  /// - `SLS_Data`: SLS Project used by the cluster logging feature, default behavior is to retain, option to delete is available.
  /// - `SLS_ControlPlane`: SLS Project used for the managed cluster control plane logs, default behavior is to retain, option to delete is available.
  /// - `PrivateZone`: PrivateZone resources created by the cluster, default behavior is to retain, option to delete is available.
  /// ```
  /// ...
  /// // Specify delete_options as below when deleting cluster
  /// // delete SLB resources created by the Nginx Ingress Service
  /// delete_options {
  /// delete_mode = "delete"
  /// resource_type = "SLB"
  /// }
  /// // delete ALB resources created by the ALB Ingress Controller
  /// delete_options {
  /// delete_mode = "delete"
  /// resource_type = "ALB"
  /// }
  /// // delete SLS Project used by the cluster logging feature
  /// delete_options {
  /// delete_mode = "delete"
  /// resource_type = "SLS_Data"
  /// }
  /// // delete SLS Project used for the managed cluster control plane logs
  /// delete_options {
  /// delete_mode = "delete"
  /// resource_type = "SLS_ControlPlane"
  /// }
  /// // delete PrivateZone resources created by the cluster
  /// delete_options {
  /// delete_mode = "delete"
  /// resource_type = "PrivateZone"
  /// }
  /// ```
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ServerlessKubernetesDeleteOption].
  /// [deleteMode] The deletion mode of the cluster. Different resources may have different default behavior, see `resource_type` for details. Valid values:
  /// [resourceType] The type of resources that are created by cluster. Valid values:
  ServerlessKubernetesDeleteOption({
    this.deleteMode,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteMode': ?deleteMode,
      'resourceType': ?resourceType,
    };
  }

  factory ServerlessKubernetesDeleteOption.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesDeleteOption(
      deleteMode: map['deleteMode'] == null ? null : (map['deleteMode'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
    );
  }
}

