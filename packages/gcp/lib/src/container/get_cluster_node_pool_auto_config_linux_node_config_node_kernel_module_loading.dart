// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading {
  /// The policy for kernel module loading.
  final String policy;

  /// Creates a new [GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading].
  /// [policy] The policy for kernel module loading.
  GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    return map;
  }

  factory GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfigLinuxNodeConfigNodeKernelModuleLoading(
      policy: map['policy'] as String,
    );
  }
}
