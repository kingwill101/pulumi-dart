// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIamPolicy.
class GetIamPolicyArgs3 {
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final Input<String> project;

  GetIamPolicyArgs3({
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    return map;
  }

  factory GetIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyArgs3(
      project: Input.asInput<String>(map['project']),
    );
  }
}
