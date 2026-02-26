// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IAMPolicy.
class IAMPolicyArgs {
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final Input<String> folder;

  /// The <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source that represents
  /// the IAM policy that will be applied to the folder. The policy will be
  /// merged with any existing policy applied to the folder.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the folder, locking out users without
  /// folder-level access.
  final Input<String> policyData;

  IAMPolicyArgs({
    required this.folder,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    map['policyData'] = policyData;
    return map;
  }

  factory IAMPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IAMPolicyArgs(
      folder: Input.asInput<String>(map['folder']),
      policyData: Input.asInput<String>(map['policyData']),
    );
  }
}
