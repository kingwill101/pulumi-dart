// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterAccessInfoZkLink {
  /// The access link address of ZooKeeper.
  final pulumi.Input<String> link;
  /// The port of ZooKeeper.
  final pulumi.Input<String> port;

  /// Creates a new [GetClustersClusterAccessInfoZkLink].
  /// [link] The access link address of ZooKeeper.
  /// [port] The port of ZooKeeper.
  const GetClustersClusterAccessInfoZkLink({
    required this.link,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'link': link,
      'port': port,
    };
  }

  factory GetClustersClusterAccessInfoZkLink.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterAccessInfoZkLink(
      link: pulumi.Input.fromValue(map['link'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
    );
  }
}

