// ignore_for_file: unused_element, unnecessary_cast

class FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer {
  /// The name of the container.
  final String? containerName;

  /// The CPU limit of the container.
  final String? cpuLimit;

  /// The CPU request of the container.
  final String? cpuRequest;

  /// The memory limit of the container.
  final String? memoryLimit;

  /// The memory request of the container.
  final String? memoryRequest;

  /// Creates a new [FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer].
  /// [containerName] The name of the container.
  /// [cpuLimit] The CPU limit of the container.
  /// [cpuRequest] The CPU request of the container.
  /// [memoryLimit] The memory limit of the container.
  /// [memoryRequest] The memory request of the container.
  FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer({
    this.containerName,
    this.cpuLimit,
    this.cpuRequest,
    this.memoryLimit,
    this.memoryRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerNameValue = containerName;
    if (containerNameValue != null) {
      map['containerName'] = containerNameValue;
    }
    final cpuLimitValue = cpuLimit;
    if (cpuLimitValue != null) {
      map['cpuLimit'] = cpuLimitValue;
    }
    final cpuRequestValue = cpuRequest;
    if (cpuRequestValue != null) {
      map['cpuRequest'] = cpuRequestValue;
    }
    final memoryLimitValue = memoryLimit;
    if (memoryLimitValue != null) {
      map['memoryLimit'] = memoryLimitValue;
    }
    final memoryRequestValue = memoryRequest;
    if (memoryRequestValue != null) {
      map['memoryRequest'] = memoryRequestValue;
    }
    return map;
  }

  factory FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer.fromMap(
      Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementConfigSyncDeploymentOverrideContainer(
      containerName:
          map['containerName'] == null ? null : map['containerName'] as String,
      cpuLimit: map['cpuLimit'] == null ? null : map['cpuLimit'] as String,
      cpuRequest:
          map['cpuRequest'] == null ? null : map['cpuRequest'] as String,
      memoryLimit:
          map['memoryLimit'] == null ? null : map['memoryLimit'] as String,
      memoryRequest:
          map['memoryRequest'] == null ? null : map['memoryRequest'] as String,
    );
  }
}
