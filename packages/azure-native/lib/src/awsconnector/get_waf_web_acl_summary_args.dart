// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_waf_web_acl_summary_args_doc}
/// Arguments for getWafWebAclSummary.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_waf_web_acl_summary_args_doc}
class GetWafWebAclSummaryArgs {
  /// Name of WafWebACLSummary
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWafWebAclSummaryArgs].
  /// [name] Name of WafWebACLSummary
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWafWebAclSummaryArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWafWebAclSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetWafWebAclSummaryArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

