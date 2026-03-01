// ignore_for_file: unused_element, unnecessary_cast


/// The data disks groups for the role.
class DataDisksGroups {
  /// The number of disks per node.
  final int? disksPerNode;

  /// Creates a new [DataDisksGroups].
  /// [disksPerNode] The number of disks per node.
  DataDisksGroups({
    this.disksPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disksPerNode': ?disksPerNode,
    };
  }

  factory DataDisksGroups.fromMap(Map<String, dynamic> map) {
    return DataDisksGroups(
      disksPerNode: map['disksPerNode'] == null ? null : map['disksPerNode'] as int,
    );
  }
}

