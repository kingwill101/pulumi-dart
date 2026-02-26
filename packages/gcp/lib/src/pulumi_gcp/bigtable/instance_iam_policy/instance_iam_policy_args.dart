// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicyArgs {
  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamMember`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamMember`" pulumi-lang-go="`bigtable.InstanceIamMember`" pulumi-lang-python="`bigtable.InstanceIamMember`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamMember`" pulumi-lang-java="`gcp.bigtable.InstanceIamMember`">`gcp.bigtable.InstanceIamMember`</span> or <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-go="`bigtable.InstanceIamBinding`" pulumi-lang-python="`bigtable.InstanceIamBinding`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-java="`gcp.bigtable.InstanceIamBinding`">`gcp.bigtable.InstanceIamBinding`</span>:
  final Input<String> instance;
  final Input<String> policyData;
  final Input<String>? project;

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
      instance: Input.asInput<String>(map['instance']),
      policyData: Input.asInput<String>(map['policyData']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
