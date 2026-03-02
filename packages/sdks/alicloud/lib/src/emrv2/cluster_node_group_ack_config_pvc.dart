// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAckConfigPvc {
  /// The ack cluster job pod data disk size of persistent volume claim.
  final pulumi.Input<int> dataDiskSize;
  /// The ack cluster job pod data disk storage class of persistent volume claim.
  final pulumi.Input<String> dataDiskStorageClass;
  /// The name of ack cluster job pod volume mounts.
  final pulumi.Input<String> name;
  /// The path of ack cluster job pod volume mounts.
  final pulumi.Input<String> path;

  /// Creates a new [ClusterNodeGroupAckConfigPvc].
  /// [dataDiskSize] The ack cluster job pod data disk size of persistent volume claim.
  /// [dataDiskStorageClass] The ack cluster job pod data disk storage class of persistent volume claim.
  /// [name] The name of ack cluster job pod volume mounts.
  /// [path] The path of ack cluster job pod volume mounts.
  ClusterNodeGroupAckConfigPvc({
    required this.dataDiskSize,
    required this.dataDiskStorageClass,
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskSize': dataDiskSize,
      'dataDiskStorageClass': dataDiskStorageClass,
      'name': name,
      'path': path,
    };
  }

  factory ClusterNodeGroupAckConfigPvc.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAckConfigPvc(
      dataDiskSize: (map['dataDiskSize'] as int).input(),
      dataDiskStorageClass: (map['dataDiskStorageClass'] as String).input(),
      name: (map['name'] as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

