// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicyArgs {
  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For `gcp.bigtable.InstanceIamMember` or `gcp.bigtable.InstanceIamBinding`:
  final pulumi.Input<String> instance;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  InstanceIamPolicyArgs({
    required this.instance,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    map['policyData'] = policyData;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs(
      instance: pulumi.Input.asInput<String>(map['instance']),
      policyData: pulumi.Input.asInput<String>(map['policyData']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
