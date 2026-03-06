// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_cluster_container_provider_info_eks_info.dart';

class GetVirtualClusterContainerProviderInfo {
  /// Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running
  final pulumi.Input<List<GetVirtualClusterContainerProviderInfoEksInfo>> eksInfos;

  /// Creates a new [GetVirtualClusterContainerProviderInfo].
  /// [eksInfos] Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running
  const GetVirtualClusterContainerProviderInfo({
    required this.eksInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eksInfos': pulumi.Input.mapInputValue<List<GetVirtualClusterContainerProviderInfoEksInfo>, List<Map<String, dynamic>>>(eksInfos, (value) => pulumi.Input.encodeList<GetVirtualClusterContainerProviderInfoEksInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualClusterContainerProviderInfo.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterContainerProviderInfo(
      eksInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualClusterContainerProviderInfoEksInfo>(map['eksInfos']!, (value) => GetVirtualClusterContainerProviderInfoEksInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

