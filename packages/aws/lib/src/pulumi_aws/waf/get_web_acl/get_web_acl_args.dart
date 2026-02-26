// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWebAcl.
class GetWebAclArgs {
  /// Name of the WAF Web ACL.
  final Input<String> name;

  GetWebAclArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetWebAclArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAclArgs(
      name: Input.asInput<String>(map['name']),
    );
  }
}
