// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eks_get_access_policies_get_access_policies_args_doc}
/// Arguments for getAccessPolicies.
/// {@endtemplate}
/// {@macro pulumi_eks_get_access_policies_get_access_policies_args_doc}
class GetAccessPoliciesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetAccessPoliciesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetAccessPoliciesArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetAccessPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPoliciesArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
