// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getProjectIamPolicy.
class GetProjectIamPolicyArgs2 {
  final Input<String> resource;

  GetProjectIamPolicyArgs2({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    return map;
  }

  factory GetProjectIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetProjectIamPolicyArgs2(
      resource: Input.asInput<String>(map['resource']),
    );
  }
}
