// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubnet.
class GetSubnetArgs {
  /// Name of the resource.
  /// UserDefined subnets are named in the format of "service-n", where n ranges from 1 to 5.
  /// Management subnets have arbitary names including "vmotion", "vsan", "system-management" etc. More details about subnet names can be found on the cloud console.
  final Input<String> name;

  /// The resource name of the private cloud that this subnet belongs.
  final Input<String> parent;

  GetSubnetArgs({
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parent'] = parent;
    return map;
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      name: Input.asInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
