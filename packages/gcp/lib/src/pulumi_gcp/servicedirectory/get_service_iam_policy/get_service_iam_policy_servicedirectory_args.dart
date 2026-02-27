// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceIamPolicy.
class GetServiceIamPolicyServicedirectoryArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;

  GetServiceIamPolicyServicedirectoryArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetServiceIamPolicyServicedirectoryArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServiceIamPolicyServicedirectoryArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}
