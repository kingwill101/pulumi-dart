// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZnodesZnode {
  /// The ID of the Cluster.
  final pulumi.Input<String> clusterId;
  /// The Node data.
  final pulumi.Input<String> data;
  /// Node list information, the value is as follows:
  final pulumi.Input<bool> dir;
  /// The ID of the Znode. The value formats as `&lt;cluster_id&gt;:&lt;path&gt;`.
  final pulumi.Input<String> id;
  /// The Node path.
  final pulumi.Input<String> path;
  /// The Node name.
  final pulumi.Input<String> znodeName;

  /// Creates a new [GetZnodesZnode].
  /// [clusterId] The ID of the Cluster.
  /// [data] The Node data.
  /// [dir] Node list information, the value is as follows:
  /// [id] The ID of the Znode. The value formats as `&lt;cluster_id&gt;:&lt;path&gt;`.
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
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      data: pulumi.Input.fromValue(map['data'] as String),
      dir: pulumi.Input.fromValue(map['dir'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      znodeName: pulumi.Input.fromValue(map['znodeName'] as String),
    );
  }
}

