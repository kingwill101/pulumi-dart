// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExternalAccessRule.
class GetExternalAccessRuleArgs {
  /// Name of the resource.
  final Input<String> name;

  /// The resource name of the network policy that this cluster belongs.
  final Input<String> parent;

  GetExternalAccessRuleArgs({
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parent'] = parent;
    return map;
  }

  factory GetExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleArgs(
      name: Input.asInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
