// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_external_access_rule_get_external_access_rule_args_doc}
/// Arguments for getExternalAccessRule.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_external_access_rule_get_external_access_rule_args_doc}
class GetExternalAccessRuleArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;

  /// The resource name of the network policy that this cluster belongs.
  final pulumi.Input<String> parent;

  /// Creates a new [GetExternalAccessRuleArgs].
  /// [name] Name of the resource.
  /// [parent] The resource name of the network policy that this cluster belongs.
  GetExternalAccessRuleArgs({
    required String name,
    required String parent,
  })  : name = pulumi.Input.asInput<String>(name),
        parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parent'] = parent;
    return map;
  }

  factory GetExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleArgs(
      name: map['name'] as String,
      parent: map['parent'] as String,
    );
  }
}
