// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes role compute resource
class KubernetesRoleComputeResponse {
  /// Memory in bytes
  final pulumi.Input<double> memoryInBytes;
  /// Processor count
  final pulumi.Input<int> processorCount;
  /// VM profile
  final pulumi.Input<String> vmProfile;

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
      memoryInBytes: (map['memoryInBytes'] as double).input(),
      processorCount: (map['processorCount'] as int).input(),
      vmProfile: (map['vmProfile'] as String).input(),
    );
  }
}

