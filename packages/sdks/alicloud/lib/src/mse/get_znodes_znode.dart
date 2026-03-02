// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZnodesZnode {
  /// The ID of the Cluster.
  final pulumi.Input<String> clusterId;
  /// The Node data.
  final pulumi.Input<String> data;
  /// Node list information, the value is as follows:
  final pulumi.Input<bool> dir;
  /// The ID of the Znode. The value formats as `<cluster_id>:<path>`.
  final pulumi.Input<String> id;
  /// The Node path.
  final pulumi.Input<String> path;
  /// The Node name.
  final pulumi.Input<String> znodeName;

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
      clusterId: (map['clusterId'] as String).input(),
      data: (map['data'] as String).input(),
      dir: (map['dir'] as bool).input(),
      id: (map['id'] as String).input(),
      path: (map['path'] as String).input(),
      znodeName: (map['znodeName'] as String).input(),
    );
  }
}

