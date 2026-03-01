// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterAccessInfoZkLink {
  /// The access link address of ZooKeeper.
  final String link;
  /// The port of ZooKeeper.
  final String port;

  /// Creates a new [GetClustersClusterAccessInfoZkLink].
  /// [link] The access link address of ZooKeeper.
  /// [port] The port of ZooKeeper.
  GetClustersClusterAccessInfoZkLink({
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
      link: map['link'] as String,
      port: map['port'] as String,
    );
  }
}

