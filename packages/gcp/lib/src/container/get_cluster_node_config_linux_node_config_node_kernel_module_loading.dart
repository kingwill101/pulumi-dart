// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading {
  /// The policy for kernel module loading.
  final String policy;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading].
  /// [policy] The policy for kernel module loading.
  GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigNodeKernelModuleLoading(
      policy: map['policy'] as String,
    );
  }
}

