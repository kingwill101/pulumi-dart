// ignore_for_file: unused_element, unnecessary_cast


class GetZnodesZnode {
  /// The ID of the Cluster.
  final String clusterId;
  /// The Node data.
  final String data;
  /// Node list information, the value is as follows:
  final bool dir;
  /// The ID of the Znode. The value formats as `<cluster_id>:<path>`.
  final String id;
  /// The Node path.
  final String path;
  /// The Node name.
  final String znodeName;

  /// Creates a new [GetZnodesZnode].
  /// [clusterId] The ID of the Cluster.
  /// [data] The Node data.
  /// [dir] Node list information, the value is as follows:
  /// [id] The ID of the Znode. The value formats as `<cluster_id>:<path>`.
  /// [path] The Node path.
  /// [znodeName] The Node name.
  GetZnodesZnode({
    required this.clusterId,
    required this.data,
    required this.dir,
    required this.id,
    required this.path,
    required this.znodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'data': data,
      'dir': dir,
      'id': id,
      'path': path,
      'znodeName': znodeName,
    };
  }

  factory GetZnodesZnode.fromMap(Map<String, dynamic> map) {
    return GetZnodesZnode(
      clusterId: map['clusterId'] as String,
      data: map['data'] as String,
      dir: map['dir'] as bool,
      id: map['id'] as String,
      path: map['path'] as String,
      znodeName: map['znodeName'] as String,
    );
  }
}

