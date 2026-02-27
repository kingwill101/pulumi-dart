// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCluster.
class GetClusterVmwareengineArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;

  /// The resource name of the private cloud that this cluster belongs.
  final pulumi.Input<String> parent;

  GetClusterVmwareengineArgs({
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parent'] = parent;
    return map;
  }

  factory GetClusterVmwareengineArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterVmwareengineArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
