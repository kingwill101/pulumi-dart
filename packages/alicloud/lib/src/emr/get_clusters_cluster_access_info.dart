// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_access_info_zk_link.dart';

class GetClustersClusterAccessInfo {
  /// Link address information list of ZooKeeper.
  final List<GetClustersClusterAccessInfoZkLink> zkLinks;

  /// Creates a new [GetClustersClusterAccessInfo].
  /// [zkLinks] Link address information list of ZooKeeper.
  GetClustersClusterAccessInfo({
    required this.zkLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zkLinks': pulumi.Input.encodeList<GetClustersClusterAccessInfoZkLink, Map<String, dynamic>>(zkLinks, (value) => value.toMap()),
    };
  }

  factory GetClustersClusterAccessInfo.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterAccessInfo(
      zkLinks: pulumi.Input.decodeList<GetClustersClusterAccessInfoZkLink>(map['zkLinks'], (value) => GetClustersClusterAccessInfoZkLink.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

