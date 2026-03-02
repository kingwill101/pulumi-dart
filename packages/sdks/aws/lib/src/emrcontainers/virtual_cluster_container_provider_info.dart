// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_cluster_container_provider_info_eks_info.dart';

class VirtualClusterContainerProviderInfo {
  /// Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running
  final pulumi.Input<VirtualClusterContainerProviderInfoEksInfo> eksInfo;

  /// Creates a new [VirtualClusterContainerProviderInfo].
  /// [eksInfo] Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running
  VirtualClusterContainerProviderInfo({
    required this.eksInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eksInfo': pulumi.Input.mapInputValue<VirtualClusterContainerProviderInfoEksInfo, Map<String, dynamic>>(eksInfo, (value) => value.toMap()),
    };
  }

  factory VirtualClusterContainerProviderInfo.fromMap(Map<String, dynamic> map) {
    return VirtualClusterContainerProviderInfo(
      eksInfo: (VirtualClusterContainerProviderInfoEksInfo.fromMap((map['eksInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

