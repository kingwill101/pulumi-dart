// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_software_info_software.dart';

class GetClustersClusterSoftwareInfo {
  /// Cluster type:
  final String clusterType;
  /// E-MapReduce version number.
  final String emrVer;
  /// Service list.
  final List<GetClustersClusterSoftwareInfoSoftware> softwares;

  /// Creates a new [GetClustersClusterSoftwareInfo].
  /// [clusterType] Cluster type:
  /// [emrVer] E-MapReduce version number.
  /// [softwares] Service list.
  GetClustersClusterSoftwareInfo({
    required this.clusterType,
    required this.emrVer,
    required this.softwares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'emrVer': emrVer,
      'softwares': pulumi.Input.encodeList<GetClustersClusterSoftwareInfoSoftware, Map<String, dynamic>>(softwares, (value) => value.toMap()),
    };
  }

  factory GetClustersClusterSoftwareInfo.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterSoftwareInfo(
      clusterType: map['clusterType'] as String,
      emrVer: map['emrVer'] as String,
      softwares: pulumi.Input.decodeList<GetClustersClusterSoftwareInfoSoftware>(map['softwares'], (value) => GetClustersClusterSoftwareInfoSoftware.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

