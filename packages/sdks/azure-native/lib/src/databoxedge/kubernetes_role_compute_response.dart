// ignore_for_file: unused_element, unnecessary_cast


/// Kubernetes role compute resource
class KubernetesRoleComputeResponse {
  /// Memory in bytes
  final double memoryInBytes;
  /// Processor count
  final int processorCount;
  /// VM profile
  final String vmProfile;

  /// Creates a new [KubernetesRoleComputeResponse].
  /// [memoryInBytes] Memory in bytes
  /// [processorCount] Processor count
  /// [vmProfile] VM profile
  KubernetesRoleComputeResponse({
    required this.memoryInBytes,
    required this.processorCount,
    required this.vmProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryInBytes': memoryInBytes,
      'processorCount': processorCount,
      'vmProfile': vmProfile,
    };
  }

  factory KubernetesRoleComputeResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleComputeResponse(
      memoryInBytes: map['memoryInBytes'] as double,
      processorCount: map['processorCount'] as int,
      vmProfile: map['vmProfile'] as String,
    );
  }
}

