// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIpset.
class GetIpsetArgs {
  /// Name of the WAF IP set.
  final pulumi.Input<String> name;

  GetIpsetArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetIpsetArgs.fromMap(Map<String, dynamic> map) {
    return GetIpsetArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}
