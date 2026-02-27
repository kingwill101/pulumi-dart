// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNamespaceIamPolicy.
class GetNamespaceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  GetNamespaceIamPolicyArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetNamespaceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIamPolicyArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}
