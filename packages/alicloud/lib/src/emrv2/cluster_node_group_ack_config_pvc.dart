// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAckConfigPvc {
  /// The ack cluster job pod data disk size of persistent volume claim.
  final int dataDiskSize;
  /// The ack cluster job pod data disk storage class of persistent volume claim.
  final String dataDiskStorageClass;
  /// The name of ack cluster job pod volume mounts.
  final String name;
  /// The path of ack cluster job pod volume mounts.
  final String path;

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
      dataDiskSize: map['dataDiskSize'] as int,
      dataDiskStorageClass: map['dataDiskStorageClass'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}

