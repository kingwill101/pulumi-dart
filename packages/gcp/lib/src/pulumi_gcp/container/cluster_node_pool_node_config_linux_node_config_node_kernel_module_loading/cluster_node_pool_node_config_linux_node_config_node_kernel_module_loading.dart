// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading {
  /// Possible kernel module loading policies.
  /// Accepted values are:
  /// * `POLICY_UNSPECIFIED`: Default if unset. GKE selects the image based on node type. For CPU and TPU nodes, the image will not allow loading external kernel modules. For GPU nodes, the image will allow loading any module, whether it is signed or not.
  /// * `ENFORCE_SIGNED_MODULES`: Enforced signature verification: Node pools will use a Container-Optimized OS image configured to allow loading of *Google-signed* external kernel modules. Loadpin is enabled but configured to exclude modules, and kernel module signature checking is enforced.
  /// * `DO_NOT_ENFORCE_SIGNED_MODULES`: Mirrors existing DEFAULT behavior: For CPU and TPU nodes, the image will not allow loading external kernel modules. For GPU nodes, the image will allow loading any module, whether it is signed or not.
  final String? policy;

  ClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    return map;
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigNodeKernelModuleLoading(
      policy: map['policy'] == null ? null : map['policy'] as String,
    );
  }
}
