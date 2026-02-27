// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProjectIamPolicy.
class GetProjectIamPolicyArgs {
  final pulumi.Input<String> resource;

  GetProjectIamPolicyArgs({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    return map;
  }

  factory GetProjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectIamPolicyArgs(
      resource: pulumi.Input.asInput<String>(map['resource']),
    );
  }
}
