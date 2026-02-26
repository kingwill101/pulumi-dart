// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExternalAddress.
class GetExternalAddressArgs {
  /// Name of the resource.
  final Input<String> name;

  /// The resource name of the private cloud that this cluster belongs.
  final Input<String> parent;

  GetExternalAddressArgs({
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parent'] = parent;
    return map;
  }

  factory GetExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAddressArgs(
      name: Input.asInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
