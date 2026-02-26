// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_cluster_container_provider_info_eks_info/virtual_cluster_container_provider_info_eks_info.dart';

class VirtualClusterContainerProviderInfo {
  /// Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running
  final VirtualClusterContainerProviderInfoEksInfo eksInfo;

  VirtualClusterContainerProviderInfo({
    required this.eksInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eksInfo'] = eksInfo.toMap();
    return map;
  }

  factory VirtualClusterContainerProviderInfo.fromMap(
      Map<String, dynamic> map) {
    return VirtualClusterContainerProviderInfo(
      eksInfo: VirtualClusterContainerProviderInfoEksInfo.fromMap(
          (map['eksInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
