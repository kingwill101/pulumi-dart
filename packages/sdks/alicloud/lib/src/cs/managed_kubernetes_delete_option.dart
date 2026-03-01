// ignore_for_file: unused_element, unnecessary_cast


class ManagedKubernetesDeleteOption {
  /// The deletion mode of the cluster. Different resources may have different default behavior, see `resource_type` for details. Valid values:
  final String? deleteMode;
  /// The type of resources that are created by cluster. Valid values:
  /// - `SLB`: SLB resources created by the Nginx Ingress Service, default behavior is to delete, option to retain is available.
  /// - `ALB`: ALB resources created by the ALB Ingress Controller, default behavior is to retain, option to delete is available.
  /// - `SLS_Data`: SLS Project used by the cluster logging feature, default behavior is to retain, option to delete is available.
  /// - `SLS_ControlPlane`: SLS Project used for the managed cluster control plane logs, default behavior is to retain, option to delete is available.
  ///
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
  /// ```
  final String? resourceType;

  /// Creates a new [ManagedKubernetesDeleteOption].
  /// [deleteMode] The deletion mode of the cluster. Different resources may have different default behavior, see `resource_type` for details. Valid values:
  /// [resourceType] The type of resources that are created by cluster. Valid values:
  ManagedKubernetesDeleteOption({
    this.deleteMode,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteMode': ?deleteMode,
      'resourceType': ?resourceType,
    };
  }

  factory ManagedKubernetesDeleteOption.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesDeleteOption(
      deleteMode: map['deleteMode'] == null ? null : map['deleteMode'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

