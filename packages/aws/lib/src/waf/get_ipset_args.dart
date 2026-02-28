// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_ipset_get_ipset_args_doc}
/// Arguments for getIpset.
/// {@endtemplate}
/// {@macro pulumi_waf_get_ipset_get_ipset_args_doc}
class GetIpsetArgs {
  /// Name of the WAF IP set.
  final pulumi.Input<String> name;

  /// Creates a new [GetIpsetArgs].
  /// [name] Name of the WAF IP set.
  GetIpsetArgs({
    required String name,
  }) : name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetIpsetArgs.fromMap(Map<String, dynamic> map) {
    return GetIpsetArgs(
      name: map['name'] as String,
    );
  }
}
