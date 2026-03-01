// ignore_for_file: unused_element, unnecessary_cast


/// Current status on a group of nodes of the same vm size.
class VirtualMachineNodes {
  /// Number of nodes.
  final int? count;
  /// The VM size of the agents used to host this group of nodes.
  final String? size;

  /// Creates a new [VirtualMachineNodes].
  /// [count] Number of nodes.
  /// [size] The VM size of the agents used to host this group of nodes.
  VirtualMachineNodes({
    this.count,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'size': ?size,
    };
  }

  factory VirtualMachineNodes.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNodes(
      count: map['count'] == null ? null : map['count'] as int,
      size: map['size'] == null ? null : map['size'] as String,
    );
  }
}

