// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_cluster_container_provider_info_eks_info.dart';

class GetVirtualClusterContainerProviderInfo {
  /// Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running
  final List<GetVirtualClusterContainerProviderInfoEksInfo> eksInfos;

  /// Creates a new [GetVirtualClusterContainerProviderInfo].
  /// [eksInfos] Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running
  GetVirtualClusterContainerProviderInfo({
    required this.eksInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eksInfos'] = pulumi.Input.encodeList<
        GetVirtualClusterContainerProviderInfoEksInfo,
        Map<String, dynamic>>(eksInfos, (value) => value.toMap());
    return map;
  }

  factory GetVirtualClusterContainerProviderInfo.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualClusterContainerProviderInfo(
      eksInfos: pulumi.Input.decodeList<
              GetVirtualClusterContainerProviderInfoEksInfo>(
          map['eksInfos'],
          (value) => GetVirtualClusterContainerProviderInfoEksInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
